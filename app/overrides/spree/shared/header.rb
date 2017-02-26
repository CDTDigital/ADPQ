authorized_search_bar = '
<% if spree_current_user %>
    <%= render partial: "spree/shared/main_nav_bar" if store_menu? %>
<% end %>
'

Deface::Override.new(virtual_path: 'spree/shared/_header',
                     name: 'authorized_user_search_bar',
                     replace: "erb[loud]:contains('spree/shared/main_nav_bar')",
                     text: authorized_search_bar)
