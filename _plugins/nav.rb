module Jekyll

  module CPP2DOC_NavFilter
    def make_nav_left_menu_impl (parent, childs, item_list, permalink_to_title)

    r = ''
    item_list.each do |dic|
      if dic.is_a? String then 
        key, val = dic, nil
      else
        key, val = dic.first
      end
      b = (childs[0] == key)
      active = ("active" if b) or ''
      pl = parent + '/' + key 
      title =  permalink_to_title[pl]
      if (title) 
        r += '<li class="navigation-list-item navigation-child-item %s">'%[active]
        r += ' <a href="%s" class="navigation-list-link %s ">%s</a>' %[pl, active, title]
        if b and val then 
          r += '<ul class="navigation-list-child-list ">'
          r += make_nav_left_menu_impl([parent, childs[0]].join('/'), childs.slice(1,100), val, permalink_to_title)
          r += '</ul>'
        end
      end
    end
    return r 
    end

    def make_nav_left_menu(permalink, nav_left_menu_table, permalink_to_title)
    if not permalink then 
      return ''
    end
    childs = permalink.split('/').slice(1,100)  # remove the first '' because permalink starts with /
    r = '<ul class="navigation-list">'
    r += make_nav_left_menu_impl('', childs, nav_left_menu_table, permalink_to_title)
    r += '</ul>'
    return r

    end

  end
end
Liquid::Template.register_filter(Jekyll::CPP2DOC_NavFilter)

