Deface::Override.new( name: 'assassinate_the_spree_logo',
                      virtual_path: 'spree/shared/_header',
                      replace_contents: '#logo',
                      text: '<a href="/"><%= image_tag "logo.png" %></a>')
