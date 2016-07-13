Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  namespace :admin do
    root 'dashboard#index'

    # devise
    devise_for :supervisors, controllers: {
      # confirmations: 'admin/supervisors/confirmations',
      sessions: 'admin/supervisors/sessions',
      unlocks: 'admin/supervisors/unlocks',
      # registrations: 'admin/supervisors/registrations',
      passwords: 'admin/supervisors/passwords'
    }
    #
    patch 'pictures/update_sequence'
    #
    resources :groups, :menus, :categories, :products, :store_infos, :home_grids, :banners

    resources :supervisors do
      collection do
        match :change_password, :via => [:post, :get, :patch]
      end

    end
    # Directs /admin/products/* to Admin::ProductsController
    # (app/controllers/admin/products_controller.rb)
  end
  # jCoin API
  # Rails API 參考https://codedecoder.wordpress.com/2013/02/21/sample-rest-api-example-in-rails/
  # call api sample
  # http://localhost:3000/api/v1/jcard/card_id_123456.json
  scope :path => '/api/v1/', :module => 'api/v1' do
    # 不用 :resources 因為會產生不會用到的routes
    scope :controller => 'jcoin' do
      get 'jcard/:id' => :fetch
      patch 'jcard/:id' => :trans
    end
  end
end
