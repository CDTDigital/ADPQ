Deface::Override.new( name: 'assassinate_the_spree_admin_logo',
                      virtual_path: 'spree/admin/shared/_header',
                      replace: "erb[loud]:contains('link_to')",
                      text: '<%= link_to(
                      image_tag("logo.png", id: "logo"),
                      spree.admin_path,
                      class: "logo navbar-brand"
                      ) %>')
