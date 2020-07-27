module Jekyll

  module CPP2DOC_Generator

    # ######################################################################
    #
    # Generator executed before rendering the pages Cf Jekyll help, custom Generators
    # It constructs 
    # 3 tables : permalinks -> title, brief, fancyname
    # highlighted_types : a list of all documents classes and concepts 
    #
    # ######################################################################
    
    class Generator < Jekyll::Generator
      def generate(site)
        permalink_to_title = {}
        permalink_to_brief = {}
        permalink_to_fancyname = {}
        highlighted_types = {}
        
        # loop on all md pages
        site.pages.each do |page|
          permalink = page['permalink']
          next if not permalink # no permalink, it is not a proper md page, we ignore it.
          permalink_to_title[permalink] = page['title']
          next if not permalink.start_with?('/cpp-api') 
          permalink_to_brief[permalink] = page['brief']
          permalink_to_fancyname[permalink] = (page['fancy_name'] or page['short_name'])
          if page['layout'] == 'class' or page['layout'] == 'concept'
            highlighted_types[page['qualified_name']] = permalink
          end
          if page['layout'] == 'class'
            aliases = page['aliases']
            if aliases != nil
              aliases.each do |d|
                highlighted_types[d['name']] = permalink
              end
            end
          end
        end
        
        site.data["permalink_to_title"] = permalink_to_title
        site.data["permalink_to_brief"] = permalink_to_brief
        site.data["permalink_to_fancyname"] = permalink_to_fancyname
        site.data["highlighted_types"] = highlighted_types
        
      end
    end
  end


  # ######################################################################
  #
  # A few liquid filters for cpp2doc
  # 
  # NB : All permalinks starts AND ends with / e.g. /A/B/  or / or /A/
  #
  # ######################################################################
 
  module CPP2DOC_Filter

    # ------------------------------------------------------------------------------
    # Retrieve the brief doc of a function/method fname
    # using a global table built by the generator above
    # ------------------------------------------------------------------------------
    def get_brief(fname)
      # We get the permalink of the method, function, since fname is relative to the current page.
      permalink_of_current_page = @context.registers[:page]['permalink']
      return @context.registers[:site].data['permalink_to_brief'][permalink_of_current_page  + fname + '/'] 
    end

    # ------------------------------------------------------------------------------
    # Retrieve the fancy name from a permalink 
    # using a global table built by the generator above
    # ------------------------------------------------------------------------------
     def get_fancy_name_from_permalink(permalink)
      # Ensures that permalink starts and ends with /, since it is user given
      permalink = '/' + permalink.delete_suffix('/').delete_prefix('/')  + '/' 
      r = @context.registers[:site].data['permalink_to_fancyname'][permalink]
      if (not r) then 
        return "NOT FOUND : " + permalink
      end
      return r.gsub("\n",'<BR>') # replace the \n by <BR>
    end

    # ------------------------------------------------------------------------------
    # Retrieve the fancy name of a function/method fname
    # using a global table built by the generator above
    # ------------------------------------------------------------------------------
     def get_fancy_name(fname)
      root_permalink = @context.registers[:page]['permalink']
      r = @context.registers[:site].data['permalink_to_fancyname'][root_permalink  + fname + '/']
      if (not r) then 
        return fname
      end
      return r.gsub("\n",'<BR>') # replace the \n by <BR>
    end
       
    require 'rouge' # we use the highlighter

    # ------------------------------------------------------------------------------
    # Call the Rouge highlighter on source, but replace the documented class, 
    # concepts by a link
    # remove_top_namespace : if true, 
    #   remove the e.g. nda:: top namespace from the highlighted name
    # ------------------------------------------------------------------------------
    def highlight_and_link(source, remove_top_namespace = false)

      # debug
      # is_page_of_interest = @context.registers[:page]['fancy_name'] =='reshape') 
      
      if remove_top_namespace then 
        page_namespace = @context.registers[:page]['namespace'] + "::"
        ns = page_namespace.split("::")[0] + "::"
      end

      highlighted_types = @context.registers[:site].data['highlighted_types'] 
 
      # for all types in highlighted_types, 
      #  - find them 
      #  - replace them with _X0001X_, _X0002X, which the highlighter will not cut
      #  - highlight by calling Rouge
      #  - replace back the _X0001X_, _X0002X with the name and adequate url
      #  if remove_top_namespace is true, we rerun this a second type with the top namespace removed from the type
      #  It is useful for signature when the namespace is not always explicit and would be verbose (e.g. nda:: everywhere in all nda:: functions ?)
      #
      repl_to_original = {}
      c = 1
      highlighted_types.each do |type, url|

        type_to_replace = type
        # we are going to run this twice : once with the full type, 
        # once with the type_to_replace truncated from top ns if remove_top_namespace is true
        # lambda are closure, it will see the change in type_to_replace
         worker = lambda { 
          # the type_to_replace, not followed by a word (e.g. array does not match array_adapter, and not preceded by a :)
          # e.g. array will match array, not nda::array (which could be matched in another part of the loop...), and NOT std::array !
          re = Regexp.new '(?<!:)' + type_to_replace + '(?!\w)' 
          source = source.gsub(re){ |w|
            repl = "_X000" + c.to_s + "X_"
            repl_to_original[repl] = type # Must be the full type
            c = c + 1
            repl
          }
        }
        worker.call
        if remove_top_namespace then
          type_to_replace = type.gsub(ns, '')
          worker.call
        end
      end

      formatter = Rouge::Formatters::HTML.new
      lexer = Rouge::Lexers::Cpp.new
      r = formatter.format(lexer.lex(source))
      r = '<figure class="highlight"><pre><code class="language-c--" data-lang="c++">' + r.strip + '</code></pre></figure>'

      repl_to_original.each do |repl, type|
        url = highlighted_types[type] 

        if remove_top_namespace then
          type = type.gsub(ns, '')
        end
        re = Regexp.new '(' + repl + ')(?!\w)'
        r = r.gsub(re){ |w| '<a href="%s">%s</a>' %[url, type]}
      end

      return r
    end

  end

  # #############################################
  #
  # A Liquid Tag use for page that generate some figures in code_snippets, 
  # like the python plot
  # Unused at this stage, will be used for Python figures.
  # DO NOT REMOVE, it is hard to find.
  #
  # #############################################
  class RegisterGeneratedImagesTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
     site = context.registers[:site]
     sfile_names = site.static_files.map{ |f| f.path}
     Dir.glob("*.png", base: "code_snippets").each do |f|
       if not sfile_names.include?(Dir.getwd + '/code_snippets/' + f)
         site.static_files << Jekyll::StaticFile.new(site, Dir.getwd,  "code_snippets", f)
       end
     end
     return "" # no rendering, it is just a hook giving us the context
    end
  end

end

Liquid::Template.register_filter(Jekyll::CPP2DOC_Filter)
Liquid::Template.register_tag('cpp2doc_register_images_generated_by_parser', Jekyll::RegisterGeneratedImagesTag)

