module Jekyll

  module LevelGenerator
    class Generator < Jekyll::Generator
      safe true
      priority :lowest

      def generate(site)
        @site = site
        @pages = @site.pages
        levels = {}

        Jekyll.logger.info "Jekyll Leveler:", "Start generating levels for #{@site}"

      # Iterate through the site pages and split permalinks into arrays for nav ui
        @pages.each do |page|
          perm = page['permalink']
          if perm
            nest = page['permalink'].split("/").slice(1, page["permalink"].size)
            # levels << {"id" => perm, "nest" => nest}
            levels[perm] = nest
          end
        end

        # Add level hash to data for access on rendering.
        site.data["levels"] = levels

        Jekyll.logger.info "Jekyll Leveler:", "Done generating #{levels.length} levels"
      end

    end
  end

  module Nav_Filter

    # This filter gets the level array of the page with the permalink
    def get_level_array_of(perm_id, site_levels)
      levels = site_levels
      Jekyll.logger.info "Jekyll Nav Filter:", "Start filtering levels #{levels.key?(perm_id)}"

      if levels.key?(perm_id) then
        puts perm_id, levels[perm_id]
        return levels[perm_id]
      end
    end

  end

end

Liquid::Template.register_filter(Jekyll::Nav_Filter)