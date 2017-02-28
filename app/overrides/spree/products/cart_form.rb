button_glyphicon = '<span class="glyphicon glyphicon-shopping-cart"></span>%> '
add_to_compare = '
  <div class=" product-details-add-to-compare-btn">
    <% if session[:compare] && session[:compare].include?(@product.id) %>
        <%= link_to "/compare/#{@product.id}", method: :delete, class: "btn btn-default" do %>
            <span class="glyphicon glyphicon-minus"></span> Remove from Compare
        <% end %>
    <% else %>
      <%= link_to "/compare/#{@product.id}", method: :post, class: "btn btn-default" do %>
        <span class="glyphicon glyphicon-plus"></span> Add to Compare
      <% end %>
    <% end %>
  </div>
'

Deface::Override.new(name: 'add_cart_glyph_to_button',
                     virtual_path: 'spree/products/_cart_form',
                     insert_before: "erb[loud]:contains('Spree.t(:add_to_cart)')",
                     text: button_glyphicon)

Deface::Override.new(name: 'remove_price_section_title',
                     virtual_path: 'spree/products/_cart_form',
                     remove: 'h6.product-section-title')

Deface::Override.new(name: 'add_to_compate_button',
                     virtual_path: 'spree/products/_cart_form',
                     insert_after: "div.add-to-cart",
                     text: add_to_compare)
