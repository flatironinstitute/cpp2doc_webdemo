require 'kramdown/parser/kramdown'
require 'kramdown/parser/gfm'
require 'digest'

class Kramdown::Parser::ERBKramdown < Kramdown::Parser::GFM

   def initialize(source, options)
     super
     @span_parsers.unshift(:erb_tags)
     @block_parsers.unshift(:berb_tags)
   end

   ERB_TAGS_START = /<%(.*?)%>/m
   BERB_TAGS_START = /<%(.*?)%>/m

   def parse_erb_tags
     @src.pos += @src.matched_size
     #puts @src.matched
     @tree.children << Element.new(:raw,  '<span style="color:red">' + @src.matched[2..-3] + '</span>'  )
     #@tree.children << Element.new(:text,  "ZOZOZO")
     #s = system("python3 -c'import sys; print (sys.path)'")
     @tree.children << Element.new(:codeblock,  "def f(x):\n  a = [1,2,3]\n  return a", lang: 'python')

     el = new_block_el(:codeblock, "def f(x):\n  a = [1,2,3]\n  return a", nil, location: 0, fenced: true)
          lang = "python" #@src[3].to_s.strip
          unless lang.empty?
            el.options[:lang] = lang
            el.attr['class'] = "language-python"
          end
          @tree.children << el

     el = new_block_el(:codeblock, "template<typename T, int R> struct A", nil, location: 0, fenced: false)
          lang = "cpp" #@src[3].to_s.strip
          unless lang.empty?
            el.options[:lang] = lang
            el.attr['class'] = "language-c++"
          end
          @tree.children << el

   end
   define_parser(:erb_tags, ERB_TAGS_START, '<%')

   def parse_berb_tags
    @src.pos += @src.matched_size
    code = @src.matched[2..-3].strip
    code_hash = Digest::MD5.hexdigest code
    
    fname_py = "code_snippets/code_" + code_hash + ".py"
    fname_pdf = "code_snippets/code_" + code_hash + ".pdf"
    url_pdf = "/code_snippets/code_" + code_hash + ".pdf"
   
    if not File.exists?(fname_pdf)

      system("mkdir -p code_snippets")
      File.open(fname_py, "w") { |f| 
          f.write(code) # FIXME remove the leading spaces ...
          f.write( "\nimport matplotlib.pyplot\nmatplotlib.pyplot.savefig('" + fname_pdf + "')") # FIXME check that matplotlib was imported ?
      }
      #puts "RUNNING PYTHON ON " + fname_py
      #puts File.exist?(fname_pdf)
      #puts fname_pdf
      #puts Dir.getwd 
      #puts code
      system("python3 " + fname_py)
    else
      #puts "File " + fname_pdf + "EXISTS"
    end

    table = new_block_el(:table, nil, nil, alignment: [], location: @src.current_line_number)
   
    thead =  new_block_el(:thead)
    tr =  new_block_el(:tr)
    td =  new_block_el(:td)
    td.children << Element.new(:text,  "Code")
    tr.children << td
    td =  new_block_el(:td)
    td.children << Element.new(:text,  "Result")
    tr.children << td
    thead.children << tr

    tbody =  new_block_el(:tbody)
    tr =  new_block_el(:tr)
    td1 =  new_block_el(:td)
    td2 =  new_block_el(:td)

    el = new_block_el(:codeblock, code, nil, location: 0, fenced: true)
    lang = "python" #@src[3].to_s.strip
    unless lang.empty?
      el.options[:lang] = lang
      el.attr['class'] = "language-python"
    end
    #@tree.children << el
    td1.children << el 

    el = new_block_el(:img)
    el.attr['src'] = url_pdf
    el.attr['alt'] = "THE PLOT"
    el.attr['title'] = "THE TITLE"
    #@tree.children << el
    td2.children << el 

    tr.children << td1 
    tr.children << td2
    tbody.children << tr

    table.children << thead
    table.children << tbody
    table.attr['class'] = "table-python-matplotlib"

    @tree.children << table
    
    #puts  @src.matched
    #@tree.children << Element.new(:raw,  '<span style="color:blue">' + @src.matched[2..-3] + '</span>'  )
   end
   define_parser(:berb_tags, BERB_TAGS_START)

end


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
      urls = {}
      site.pages.each do |page|
        qname = page['qualified_name']
        if page['layout'] == 'function'
          briefs[qname] = page['brief']
          urls[qname] = '/docs/cpp-api/' + qname.gsub('::','/') + ".html"
        end
        if page['layout'] == 'class'
          briefs[qname] = page['brief']
          urls[qname] = '/docs/cpp-api/' + qname.gsub('::','/') + "/index.html"
          classes.append(page['qualified_name'])
        end
      end
      site.data["urls"] = urls
      site.data["allbriefs"] = briefs
      site.data["highlighted_types"] = classes
      puts "Computing briefs"
      # puts briefs
      #puts urls
      system("pwd")
    end
  end
  end

  module CPP2DOC_Filter

    # This filter get the url of the page of an object 
    # with qualified name qname
    def get_page_of(qname, site)
      urls = site['urls']
      if urls.key?(qname) then 
        #puts qname, urls[qname]
        return urls[qname]
      end
    end

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
        type = '<a href="/docs/cpp-api/' + url + '/index.html">' + type + "</a>"
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
     #puts " START RENDER TAG"
     site = context.registers[:site]    
     sfile_names = site.static_files.map{ |f| f.path} 
     #puts "-----------"
     #puts sfile_names
     Dir.glob("*.pdf", base: "code_snippets").each do |f|
       #puts "file "  + f
       if not sfile_names.include?(Dir.getwd + '/code_snippets/' + f)
         site.static_files << Jekyll::StaticFile.new(site, Dir.getwd,  "code_snippets", f)
       end
     end

     #puts site.static_files.map{ |f| f.path} 
     #puts " END RENDER TAG"
     return "" # no rendering, it is just a hook giving us the context
    end
  end 

end

Liquid::Template.register_filter(Jekyll::CPP2DOC_Filter)
Liquid::Template.register_tag('cpp2doc_register_images_generated_by_parser', Jekyll::RegisterGeneratedImagesTag)

