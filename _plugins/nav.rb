module Jekyll
  module CPP2DOC_NavFilter
    def make_nav_left_menu_impl (parent, childs, item_list)

    permalink_to_title = @context.registers[:site].data['permalink_to_title']
    
    r = ''
    item_list.each do |dic|
      if dic.is_a? String then 
        key, val = dic, nil
      else
        key, val = dic.first
      end
      b = false
      if (childs!=nil) then 
        b = (childs[0] == key)
      end
      active = ("active" if b) or ''
      pl = parent + '/' + key + '/' 
      title =  permalink_to_title[pl]
      if (title) 
        r += '<li class="navigation-list-item navigation-child-item %s">'%[active]
        r += ' <a href="%s" class="navigation-list-link %s ">%s</a>' %[pl, active, title]
        if b and val then 
          r += '<ul class="navigation-list-child-list ">'
          r += make_nav_left_menu_impl([parent, childs[0]].join('/'), childs[1..-1], val)
          r += '</ul>'
        end
      end
    end
    return r 
    end

    def make_nav_left_menu(permalink)
    if not permalink then 
      return ''
    end

    nav_left_menu_table = @context.registers[:site].data['nav_left_menu']

    permalink.delete_prefix!('/')         # permalink starts with /. Remove it
    permalink.delete_suffix!('/')         # permalink ends with /. Remove it
    childs = permalink.split('/')         # 
    
    return  '<ul class="navigation-list">' +  make_nav_left_menu_impl('', childs, nav_left_menu_table) + '</ul>'
    end

  end
end
Liquid::Template.register_filter(Jekyll::CPP2DOC_NavFilter)

