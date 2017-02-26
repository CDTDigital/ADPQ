Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
          mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Spree::Core::Engine.add_routes do
    get '/compare', :to => 'products#compare'
    get '/delete_compare', :to => 'products#clear_compare'
    post '/compare/:id', :to => 'products#add_to_compare'
    delete '/compare', :to => 'products#clear_compare'
  end
end
