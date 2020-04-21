module Jekyll
  module MyFilter
      def op_filter(input, table)
        p input
        puts Jekyll.sites.first.data["ALLFILES"]
        input.gsub(/[:\w]+/) { |w| if table[w] then table[w] else w end}
    end
  end



  module MyFilter2
    def get_example(fname, site)
      result = site.pages.find {|item| item["short_name"] == fname}
      puts site.pages[0]
      result["Example"]
      puts result
      puts "COUCOU "
    end

    def get_brief(name, ns_qname, allbriefs)
      allbriefs [ns_qname+ '::'+ name]
    end
  end


  
  module Reading
  class Generator < Jekyll::Generator
    def generate(site)

      briefs = {}
      site.pages.each do |page|
        if page['layout'] == 'function'
          briefs[page['qualified_name']] = page['brief']
        end 
      end
      #briefs = site.pages.map{ |page| page.qualified_name
      #reading = site.pages.detect {|page| page.name == 'K2.md'}
      #readingKKK = site.pages.detect {|page| page.name == 'KKKK.md'}
      #reading.data['injected'] = "INJECTED DATA: " + readingKKK.data["documentation"]['long']
     
      site.data["allbriefs"] = briefs 
      #Dir.glob("_pages/doc/**/*.{md}")
      puts "Computing briefs"
    end
  end
end

end

Liquid::Template.register_filter(Jekyll::MyFilter)
Liquid::Template.register_filter(Jekyll::MyFilter2)
