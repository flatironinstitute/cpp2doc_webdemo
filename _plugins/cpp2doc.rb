module Jekyll

  module Reading

  # This function is executed before rendering the pages
  # Cf Jekyll help, custom Generators
  # It constructs
  # qname_to_brief :  a hash table  qualified_name  --> brief documentation
  # highlighted_types : a list of qualified name of type which are documented and
  # will be used to make link in highlighted code
  #
  class Generator < Jekyll::Generator
    def generate(site)
      permalink_to_title = {}
      permalink_to_brief = {}
      permalink_to_fancyname = {}
      highlighted_types = []
      site.pages.each do |page|
        permalink = page['permalink']
        next if not permalink 
        if permalink[-1] == '/' then 
          permalink = permalink[0..-2]
        end
        permalink_to_title[permalink] = page['title']
        next if not permalink.start_with?('/cpp-api')
        permalink_to_brief[permalink] = page['brief']
        permalink_to_fancyname[permalink] = (page['fancy_name'] or page['short_name'])
        if page['layout'] == 'class' or page['layout'] == 'concept'
          highlighted_types.append(page['qualified_name'])
        end
      end
      site.data["permalink_to_title"] = permalink_to_title
      site.data["permalink_to_brief"] = permalink_to_brief
      site.data["permalink_to_fancyname"] = permalink_to_fancyname
      site.data["highlighted_types"] = highlighted_types
    end
  end
  end

  module CPP2DOC_Filter

    # This filter associates the brief doc to a permalink using the global table
    # The point is that the data is on *another* page.
    # We must pass the table since a filter does not see the site variable
    def get_brief(name, root_permalink,  permalink_to_brief_table)
      permalink_to_brief_table [root_permalink + '/' + name]
    end

    def get_fancy_name_from_permalink(permalink, permalink_to_fancyname_table)
    
      #puts @context.registers[:site].data['permalink_to_brief']
  
      r = permalink_to_fancyname_table [permalink]
      if (not r) then 
        return "NOT FOUND : " + permalink
      end
      l = r.split
      if l.length > 1 then 
        return l.join('<BR>')
      end
      return r 
    end

    def get_fancy_name(name,  root_permalink, permalink_to_fancyname_table)
      #puts(name)
      r = permalink_to_fancyname_table [root_permalink + '/' + name]
      if (not r) then 
        return name
      end
      l = r.split
      if l.length > 1 then 
        return l.join('<BR>')
      end
      return r 
    end
       

    # FIXME : USE CONTEXT
    # This filter takes :
    #  - source  : c++ code snipper
    #  - highlighted_types : the global list of types from the site
    def link_and_highlight(source, highlighted_types, current_namespace= '')

      if not source then 
        return source
      end

      # a security if the page pass current_namespace = nil by mistake (corrupted yaml header)
      if not current_namespace then 
        current_namespace = ''
      end

      require 'rouge' # we use the highlighter

      # FIXME : bug do the join one by one with replace
      # nda::basic_array:: .... ?? replace nda !
      # Do it at the END only
      if not current_namespace.empty? then
        current_namespace += '::'
        source = source.gsub(current_namespace, '')
      end

      # Replace all types by _X0001X_, _X0002X, which the highlighter will not cut
      # Highlight by calling Rouge
      # Replace back the _X0001X_, _X0002X with the adequate url
      #
      (0..highlighted_types.length()-1).each do |n|
        type = highlighted_types[n]
        if current_namespace then
          type = type.gsub(current_namespace, '')
        end
        repl = "_X000" + (1+n).to_s + "X_"
        re_s = '(' + type + ')(?!\w)'
        re = Regexp.new re_s
        source = source.gsub(re){ |w| repl}
      end

      # FIXMe : keep the one that matched and runs only them
      formatter = Rouge::Formatters::HTML.new
      lexer = Rouge::Lexers::Cpp.new
      r = formatter.format(lexer.lex(source))
      r = '<figure class="highlight"><pre><code class="language-c--" data-lang="c++">' + r.strip + '</code></pre></figure>'

      (0..highlighted_types.length()-1).each do |n|
        type1 = highlighted_types[n]
        if current_namespace then
          type = type1.gsub(current_namespace, '')
        end
        repl = "_X000" + (1+n).to_s + "X_"
        url = type1.gsub("::","/")
        type = '<a href="/cpp-api/' + url + '">' + type + "</a>"
        re_s = '(' + repl + ')(?!\w)'
        re = Regexp.new re_s
        r = r.gsub(re){ |w| type}
      end

      return r
    end

  end

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

