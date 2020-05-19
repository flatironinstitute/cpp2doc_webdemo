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
            # Add page properties needed for nav as a hash
            nest = page['permalink'].split("/").slice(1, page["permalink"].size)
            levels[perm] = { 'nest' => nest, 'page' => page }
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

    def get_children_array_of(parent_level, site_levels, parent_index)
      child_index = parent_index + 1
      levels = site_levels
      parent = parent_level[parent_index]
      children = []
      levels.each do |level|
        if level[1]['nest'][1] then
          if level[1]['nest'][parent_index] == parent
            if level[1]['nest'].length <= (parent_index + 2)
              children.push(level[1])
            end
          end
        end
      end
      return children
    end

  end

end

Liquid::Template.register_filter(Jekyll::Nav_Filter)