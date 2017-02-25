table_html =
  '
  <table id="product-properties" class="table" data-hook>
    <tbody>
      <% @product_properties.each do |product_property| %>
        <% css_class = cycle("even", "odd", name: "properties") %>
        <tr class="<%= css_class %>">
          <td><strong><%= product_property.property.presentation %></strong></td>
          <td><%= product_property.value %></td>
        </tr>
      <% end %>
      <% reset_cycle("properties") %>
    </tbody>
  </table>
'

Deface::Override.new( name: 'properties_table_styles',
                      virtual_path: 'spree/products/_properties',
                      replace: '#product-properties',
                      text: table_html)