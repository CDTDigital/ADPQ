button_glyphicon = '<span class="glyphicon glyphicon-shopping-cart"></span>%> '

Deface::Override.new( name: 'add_cart_glyph_to_button',
                      virtual_path: 'spree/products/_cart_form',
                      insert_before: "erb[loud]:contains('Spree.t(:add_to_cart)')",
                      text: button_glyphicon)

Deface::Override.new( name: 'remove_price_section_title',
                      virtual_path: 'spree/products/_cart_form',
                      remove: 'h6.product-section-title')
