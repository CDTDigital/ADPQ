

Deface::Override.new( name: 'search_button',
                      virtual_path: 'spree/shared/_search',
                      insert_after: "erb[loud]:contains('search_field_tag :keywords')",
                      text: '<button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-search"></i></button>')


Deface::Override.new( name: 'search_label_departments',
                      virtual_path: 'spree/shared/_search',
                      insert_before: "erb[loud]:contains('select_tag :taxon')",
                      text: '<label for="taxon">Department</label>')

Deface::Override.new( name: 'search_label_search_field',
                      virtual_path: 'spree/shared/_search',
                      insert_before: "erb[loud]:contains('search_field_tag :keywords')",
                      text: '<label for="keywords">Search</label>')

Deface::Override.new( name: 'remove_search_button',
                      virtual_path: 'spree/shared/_search',
                      remove: "erb[loud]:contains('submit_tag')")
