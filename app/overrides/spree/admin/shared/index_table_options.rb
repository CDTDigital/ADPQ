Deface::Override.new( name: 'assassinate_the_spree_admin_logo',
                      virtual_path: 'spree/admin/shared/_index_table_options',
                      insert_after: "erb[loud]:contains('form_tag(per_page_dropdown_params(args)')",
                      text: '<label for="per_page" class="pull-right per_page_label">results per page</label>')