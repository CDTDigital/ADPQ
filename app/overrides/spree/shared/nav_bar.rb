Deface::Override.new( name: 'nav_bar',
                      virtual_path: 'spree/shared/_nav_bar',
                      remove: "erb[loud]:contains('render')")
