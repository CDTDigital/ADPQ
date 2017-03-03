Rails.application.routes.draw do

  get 'style_guide', to: 'style_guide#index', as: 'style_guide'
  get 'style_guide/colors'
  get 'style_guide/buttons_iconography'
  get 'style_guide/typography'
  get 'style_guide/forms'
  get 'style_guide/tables'
  get '/.well-known/acme-challenge/:id' => 'style_guide#letsencrypt'

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
    delete '/compare/:id', to: 'products#clear_compare'

    resources :orders do
      post :cancel
    end

    namespace :admin, path: Spree.admin_path do
    resources :reports, only: [:index] do
      collection do
        get :sales_total
        get :by_manufacturer
        post :sales_total
        post :by_manufacturer
      end
    end
  end
end
end
