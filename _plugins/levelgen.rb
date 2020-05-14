module Jekyll

  module LevelGenerator
    class Generator < Jekyll::Generator
      safe true
      priority :lowest

      def generate(site)
        @site = site
        @pages = @site.pages
        levels = []

        Jekyll.logger.info "Jekyll Leveler:", "Start generating levels for #{@site}"

      # Iterate through the site pages and split permalinks into arrays for nav ui
        @pages.each do |page|
          perm = page['permalink']
          if perm
            nest = page['permalink'].split("/").slice(1, page["permalink"].size)
            levels << {"id" => perm, "nest" => nest}
          end
        end

        # Add level hash to data for access on rendering.
        site.data["levels"] = levels

        Jekyll.logger.info "Jekyll Leveler:", "Done generating #{levels.length} levels"
      end

    end
  end
end