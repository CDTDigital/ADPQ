Deface::Override.new( name: 'remove_coupon_application_from_payment',
                      virtual_path: 'spree/checkout/payment',
                      remove: '[data-hook="coupon_code"]')