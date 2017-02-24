Deface::Override.new( name: 'search_bar',
                      virtual_path: 'spree/shared/_search',
                      replace: "erb[loud]:contains('submit_tag')",
                      text: '<button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-search"></i></button>')

