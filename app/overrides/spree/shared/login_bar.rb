link_to_cart = '<li id="link-to-cart" data-hook>
<noscript>
<%= link_to Spree.t(:cart), "/cart" %>
  </noscript>
  &nbsp;
</li>
<script>Spree.fetch_cart()</script>
<% if spree_current_user %>
  <li><%= link_to spree.account_path  do %><span class="glyphicon glyphicon-user"></span> My Account<% end %></li>
  <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
<% else %>
  <li id="link-to-login"><%= link_to spree.login_path do %><span class="glyphicon glyphicon-user"></span> Login<% end %></li>
<% end %>'

Deface::Override.new(virtual_path: 'spree/shared/_nav_bar',
                     name: 'auth_shared_login_bar',
                     insert_before: 'li#search-bar',
                     text: link_to_cart)