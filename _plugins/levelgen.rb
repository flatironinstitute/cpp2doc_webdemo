module Jekyll

  module LevelGenerator
    class Generator < Jekyll::Generator
      safe true
      priority :lowest

      def generate(site)
        @site = site
        @pages = @site.pages
        levels = {}

      # Iterate through the site pages and split permalinks into arrays for nav ui
        @pages.each do |page|
          perm = page['permalink']
          if perm
            # Add page properties needed for nav as a hash
            nest = page['permalink'].split("/").slice(1, page["permalink"].size)
            unless page['nav_exclude']
              levels[perm] = { 'nest' => nest, 'page' => page }
            end
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
      if levels.key?(perm_id) then
        return levels[perm_id]
      end
    end

    # Returns top level uris for breadcrumbs
    def get_uri_from_levels(index, level_array)
      uri = "/"
      index = index - 1
      i = 0
      while i <= index do
        uri.concat(level_array[i] + "/")
        i = i + 1
      end
      return uri
    end

  end

end

Liquid::Template.register_filter(Jekyll::Nav_Filter)