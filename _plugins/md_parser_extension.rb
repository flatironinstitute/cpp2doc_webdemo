require 'kramdown/parser/kramdown'
require 'kramdown/parser/gfm'
require 'digest'
require 'yaml'

class Kramdown::Parser::Kramdown_CCQ_extension < Kramdown::Parser::GFM

   def initialize(source, options)
     super
     @span_parsers.unshift(:erb_tags)
     @block_parsers.unshift(:berb_tags)
     @block_parsers.unshift(:cpp2doc_tags)
     @block_parsers.unshift(:cpp2doc_warning_tags)
     @block_parsers.unshift(:cpp2doc_link_tags)
   end

  CPP2DOC_LINK_TAGS_START = /<\[(.*?)\]>/m
   
  def parse_cpp2doc_link_tags
    @src.pos += @src.matched_size
    args = @src.matched[2..-3].strip

    #puts (args)
    el = new_block_el(:raw, '<a href="/cpp-api">%s<a>'% args )
    @tree.children << el

  end
  define_parser(:cpp2doc_link_tags, CPP2DOC_LINK_TAGS_START, "<\[")


  CPP2DOC_WARNING_TAGS_START = /<W(.*?)W>/m
   
  def parse_cpp2doc_warning_tags
    @src.pos += @src.matched_size
    args = @src.matched[2..-3].strip

    table = new_block_el(:table, nil, nil, alignment: [], location: @src.current_line_number)
    tbody =  new_block_el(:thead)
    tbody =  new_block_el(:tbody)
    tr =  new_block_el(:tr)
    td1 =  new_block_el(:td)
    td2 =  new_block_el(:td)
    
    el = new_block_el(:text, args)
    #el = Element.new(:text) #, nil, nil,  location: @src.current_line_number)

    #parse_blocks(el, args)
    
    el.attr['align'] = "left"
    td2.children << el

    el = new_block_el(:img)
    el.attr['src'] = "/assets/images/warning.png"
    el.attr['alt'] = "Warning"
    el.attr['width'] = "40"
    #el.attr['title'] = "THE TITLE"
    td1.attr['width'] = "30"
    td1.children << el

    tr.children << td1
    tr.children << td2
    tbody.children << tr

    #table.children << thead
    table.children << tbody
    table.attr['class'] = "warning"
    @tree.children << table

  end
  define_parser(:cpp2doc_warning_tags, CPP2DOC_WARNING_TAGS_START)


   CPP2DOC_TABLE_TAGS_START = /<T(.*?)T>/m
  
   def parse_cpp2doc_tags

    # NO puts @context.registers[:site].data['permalink_to_brief']
    #puts Kramdown::Document.new("a little test **STRONG** ").to_html
     
    #el = Element.new(:raw) #, nil, nil,  location: @src.current_line_number)
    #parse_blocks(el, "a little test **STRONG** ")
 
    @src.pos += @src.matched_size
    type, args = @src.matched[2..-3].strip.split(' ',2)
    begin  
     opts = YAML.load(args) 
    rescue Exception => e 
     r = "--- CPP2DOC extension '#{type}': Error in parsing the YAML arguments ---\n"
     args.each_line.with_index do |line, index|
         r += "#{index+1}: #{line}"
     end 
     r += "\n\nError was :\n  " + e.message.split(':',2)[1].strip +  "\n----------------------"
     #puts(r)
     @tree.children << Element.new(:raw, "<PRE>#{r}</PRE>")
     return
    end 
    #puts(opts)
    # protect, etc,..
    data = YAML.load(File.read("_data/" + opts['file'] + '.yml'))
    l = data[opts['key']]
    if not l
      #puts "List %s is unknown"%opts['key']
      @tree.children << Element.new(:text, "CPP2DOC EXTENSION : ERROR : ARGUMENTS INCORRECT, CF CONSOLE")
      return
    end
    l.sort!()
    ncol = opts['ncol'] or 3
    nrow = (l.length() + 1)/ ncol 
    table = new_block_el(:table, nil, nil, alignment: [], location: @src.current_line_number)
    tbody =  new_block_el(:thead)
   
    (0..nrow-1).each do |i|
      tr =  new_block_el(:tr)
      (0..ncol-1).each do |j|
        n = i*ncol + j
        if n < l.length() then 
          td =  new_block_el(:td)
          fn = l[n].split('/')[-1]
          data_f = YAML.load(File.read('docs/' + l[n].delete_suffix('/') + '.md'))
          html = '<a href="' + l[n] + '" title="' + data_f['brief'] + '"> ' + fn + '</a>'
          td.children << Element.new(:raw, html)
          tr.children << td
        end
      end 
      tbody.children << tr
    end

    #table.children << thead
    table.children << tbody
    table.attr['class'] = "table-cpp2doc-test"
  
    if opts['collapsible'] then 
      html = "<details> <summary>" + (opts['title'] or "ERROR:MISSING-TITLE") +"</summary>"
      @tree.children << Element.new(:raw, html)
    end
    @tree.children << table
    if opts['collapsible'] then 
       @tree.children << Element.new(:raw, "</details>")
    end


   end 
   define_parser(:cpp2doc_tags, CPP2DOC_TABLE_TAGS_START, '<T')


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
    fname_png = "code_snippets/code_" + code_hash + ".png"
    url_png = "/code_snippets/code_" + code_hash + ".png"

    print "Running python code %s\n" %fname_py

    if not File.exists?(fname_png)

      system("mkdir -p code_snippets")
      File.open(fname_py, "w") { |f|
          f.write(code) # FIXME remove the leading spaces ...
          f.write( "\nimport matplotlib.pyplot\nmatplotlib.pyplot.savefig('" + fname_png + "')") # FIXME check that matplotlib was imported ?
      }
      #puts "RUNNING PYTHON ON " + fname_py
      #puts File.exist?(fname_png)
      #puts fname_png
      #puts Dir.getwd
      #puts code
      system("python3 " + fname_py)
    else
      #puts "File " + fname_png + "EXISTS"
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
    el.attr['src'] = url_png
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

