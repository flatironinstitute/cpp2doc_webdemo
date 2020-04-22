module Jekyll
  module MyFilter
   
    def get_brief(qname, allbriefs)
      allbriefs [qname]
    end

    def link_and_highlight(source, highlighted_types, namespace_list= [])
   
      require 'rouge'
    
     puts source 
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
  
  module Reading
  class Generator < Jekyll::Generator
    def generate(site)

      briefs = {}
      classes = []
      site.pages.each do |page|
        if page['layout'] == 'function'  or page['layout'] == 'class'
          briefs[page['qualified_name']] = page['brief']
        end 
        if page['layout'] == 'class'
          classes.append(page['qualified_name'])
        end
      end
      #briefs = site.pages.map{ |page| page.qualified_name
      #reading = site.pages.detect {|page| page.name == 'K2.md'}
      #readingKKK = site.pages.detect {|page| page.name == 'KKKK.md'}
      #reading.data['injected'] = "INJECTED DATA: " + readingKKK.data["documentation"]['long']
     
      site.data["allbriefs"] = briefs 

      # Just for the demo
      site.data["highlighted_types"] = classes

      #Dir.glob("_pages/doc/**/*.{md}")
      puts "Computing briefs"
      #puts briefs
    end
  end
end

end

Liquid::Template.register_filter(Jekyll::MyFilter)
