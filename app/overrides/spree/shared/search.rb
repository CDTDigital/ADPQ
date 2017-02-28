
compare_link = "
  <div class='form-group pull-right'><label for='compare-link' class='compare-text' id='compare-text'>
    <% if session[:compare] && session[:compare].length > 1 %>
      <%= session[:compare].length %>/4 items in compare</label>
      <%= link_to 'Go to Compare Page', '/compare', id: 'compare-link', class: 'btn btn-success btn-sm' %>
      <%= link_to '/compare', method: :delete, class: 'btn btn-default btn-sm' do %>
        <span id='clear-compare-icon' class='glyphicon glyphicon-remove'></span> Clear Compare Page
      <% end %>
    <% else %>

    <% end %>
  </div>
"

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

Deface::Override.new( name: 'add_compare_link',
                      virtual_path: 'spree/shared/_search',
                      insert_before: "erb[loud]:contains('submit_tag')",
                      text: compare_link)

Deface::Override.new( name: 'remove_search_button',
                      virtual_path: 'spree/shared/_search',
                      remove: "erb[loud]:contains('submit_tag')")
