products_html =
    '<% products.each do |product| %>
      <% url = spree.product_path(product, taxon_id: @taxon.try(:id)) %>
      <div id="product_<%= product.id %>" class="col-md-3 col-sm-6 col-xs-6 product-list-item" data-hook="products_list_item" itemscope itemtype="https://schema.org/Product">
        <div class="panel panel-default">
          <% cache(@taxon.present? ? [I18n.locale, current_currency, @taxon, product] : cache_key_for_product(product)) do %>
            <div class="panel-body text-center product-body">
              <%= link_to url, itemprop: "url" do %>
                <%= small_image(product, itemprop: "image") %><br/>
                <span itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                  <span class="price selling lead" itemprop="price"><%= display_price(product) %></span>
                </span>
              <% end %>
              <br/>
            </div>
            <div class="panel-footer">
              <%= link_to url, itemprop: "url" do %>
                <%= content_tag(:span, truncate(product.name, length: 50), class: "info", itemprop: "name", title: product.name) %>
              <% end %>
            </div>
          <% end %>
        </div>
      </div>
    <% end %>'

Deface::Override.new(virtual_path: 'spree/shared/_products',
                     name: 'rearrange_products',
                     replace_contents: 'div#products',
                     text: products_html)

