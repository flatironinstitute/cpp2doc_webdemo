module Jekyll

  class Jekyll::Converters::Markdown::MyCustomProcessor < Jekyll::Converters::Markdown::KramdownParser
    def initialize(config)
      #require 'kramdown'
      #puts config
      super(config)
      #@config = config
    rescue LoadError
      STDERR.puts 'You are missing a library required for Markdown. Please run:'
      STDERR.puts '  $ [sudo] gem install funky_markdown'
      raise FatalException.new("Missing dependency: funky_markdown")
    end

    # Filter the warnings <W .... W> 
    WARNING_REGEX = /<W(.*?)W>/m
    WARNING_MD ="| ![Warning](/assets/images/warning.png){:height=\"36px\" width=\"36px\"} | %s |\n {: .warning-table } " 
    def treat_warnings(content) 
     return content.gsub(WARNING_REGEX, WARNING_MD % '\1') 
    end 

    # Filter the [[AAA]] into a link 
    WARNING_LINK_CPP = /\[\[(.*?)\]\]/
    def treat_link_cpp(content) 
      return content.gsub(WARNING_LINK_CPP) { |ma|  '[%s](/cpp-api/%s)'%[$1.rpartition('/')[-1], $1]} # $1 is the matched group, cf ruby gsub + block  
    end 

    def convert(content)
    
      content = treat_warnings(content) 
      content = treat_link_cpp(content) 
      
      #puts " I am parsing ..."
       #puts @context.registers[:site].data['permalink_to_brief']
      #   document = Kramdown::Document.new(content, @config)
      #  document.to_html
      super(content) # + super(content) 
      #::FunkyMarkdown.new(content).convert
    end
  end

end


