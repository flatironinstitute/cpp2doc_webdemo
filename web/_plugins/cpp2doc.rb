module Jekyll

  module Reading
  
  # This function is executed before rendering the pages
  # Cf Jekyll help, custom Generators
  # It constructs
  # briefs :  a hash table  qualified_name  --> brief documentation
  # highlighted_types : a list of qualified name of type which are documented and 
  # will be used to make link in highlighted code
  # 
  class Generator < Jekyll::Generator
    def generate(site)
      briefs = {}
      classes = []
      site.pages.each do |page|
        if page['layout'] == 'function' or page['layout'] == 'class'
          briefs[page['qualified_name']] = page['brief']
        end 
        if page['layout'] == 'class'
          classes.append(page['qualified_name'])
        end
      end
      site.data["allbriefs"] = briefs 
      site.data["highlighted_types"] = classes
      #puts "Computing briefs"
      #puts briefs
    end
  end
  end
  
  module CPP2DOC_Filter
   
    # This filter associates the brief doc to a qualified name using the global table 
    # The point is that the data is on *another* page.
    # We must pass the table since a filter does not have the site variable 
    # FIXME : Can this be fixed ? Can I not pass site_allbriefs ? 
    def get_brief(qname, site_allbriefs)
      site_allbriefs [qname]
    end

    # This filter takes :
    #  - source  : c++ code snipper
    #  - highlighted_types : the global list of types from the site
    #  - namespace_list : namespace where the page being rendered.
    def link_and_highlight(source, highlighted_types, namespace_list= [])
   
      require 'rouge' # we use the highlighter
    
      current_namespace = namespace_list.join('::')
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

      formatter = Rouge::Formatters::HTML.new
      lexer = Rouge::Lexers::Cpp.new
      r = formatter.format(lexer.lex(source))
      r = '<figure class="highlight"><pre><code class="language-c--" data-lang="c++"> ' + r + '</code></pre></figure>'
      
      (0..highlighted_types.length()-1).each do |n|
        type1 = highlighted_types[n]
        if current_namespace then 
          type = type1.gsub(current_namespace, '')
        end
        repl = "_X000" + (1+n).to_s + "X_"
        url = type1.gsub("::","/")
        type = '<a href="/_pages/doc/' + url + '/index.html">' + type + "</a>" 
        re_s = '(' + repl + ')(?!\w)'
        re = Regexp.new re_s
        r = r.gsub(re){ |w| type}
      end

      return r
    end

  end
  
end

Liquid::Template.register_filter(Jekyll::CPP2DOC_Filter)
