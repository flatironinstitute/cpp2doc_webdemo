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

    # This filter generates children or grandchildren, etc of a top level page.
    def get_children_array_of(parent_levels, site_levels, parent_index)
      sitelevels = site_levels
      parent = parent_levels[parent_index]
      children = []
      sitelevels.each do |sitelevel|
        if sitelevel[1]['nest'][1] then
          if sitelevel[1]['nest'][parent_index] == parent
            if sitelevel[1]['nest'].length == (parent_levels.length + 1)
              puts "correct child:  #{sitelevel[1]['nest']} for parent: #{parent_levels}"
              # puts "level length: #{level[1]['nest'].length}, parent index plus two: #{parent_index + 2}, level contents #{level[1]['nest']}. ***"
              children.push(sitelevel[1])
            end
          end
        end
      end
      return children
    end

    # Returns top level uris for breadcrumbs
    def get_uri_from_levels(index, level_array)
      uri = "/"
      index = index - 1
      i = 0
      while i <= index do
        uri.concat(level_array[i])
        i = i + 1
      end
      return uri
    end

  end

end

Liquid::Template.register_filter(Jekyll::Nav_Filter)