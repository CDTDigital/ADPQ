link_to_cart = '
<% if spree_current_user %>
  <li><p class="user"><span class="glyphicon glyphicon-user"></span> <%= spree_current_user.email %></p></li>
  <li id="link-to-cart" data-hook>
  <noscript>
  <%= link_to Spree.t(:cart), "/cart" %>
    </noscript>
    &nbsp;
  </li>
  <script>Spree.fetch_cart()</script>
  <li><%= link_to spree.account_path  do %>My Orders<% end %></li>
  <% if spree_current_user.spree_roles.find {|r| r.name == "admin"} %>
    <li><%= link_to "Admin", "/admin" %><li>
  <% end %>
  <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
<% end %>
'

Deface::Override.new(virtual_path: 'spree/shared/_nav_bar',
                     name: 'auth_shared_login_bar',
                     insert_before: 'li#search-bar',
                     text: link_to_cart)
