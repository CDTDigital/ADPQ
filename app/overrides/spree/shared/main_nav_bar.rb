search_bar = "<%= render partial: 'spree/shared/search' %>"

Deface::Override.new(virtual_path: 'spree/shared/_main_nav_bar',
                     name: 'insert_search_bar_here',
                     replace_contents: 'div#main-nav-bar',
                     text: search_bar)