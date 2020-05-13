module Leveling
    class Generator < Jekyll::Generator
      def generate(site)

        site.pages.each do |page|
            if page['permalink']
                nest = page['permalink'].split("/").slice(1, page['permalink'].size)
                if nest.count() > 1
                    nest.reverse.each_with_index do |nested, index|
                        levkey = "level" + index.to_s
                        # page[levkey] = nested
                    end
                    puts page['level0']
                end
            end
        end


      end
    end
end