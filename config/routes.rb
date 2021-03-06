Rails.application.routes.draw do
  get 'crate/index'
  root 'crate#index'
  get 'crate/category/:id'=> 'crate#category'
  get'crate/find:id'=> 'crate#find'
  get'crate/show/:id'=>'crate#show'
  delete "sessions" => "sessions#destroy", :as => "session_destroy"
  post '/sessions' => 'sessions#create'
  post 'users' => 'users#create'
  get 'users/edit/:id' => 'users#edit'
  patch 'users/:id' => "users#update"
  post 'photos' => 'photos#create'
  get 'crate/:id' => 'crate#show', :as => "crate"
  get 'photos/find/:id' => 'photos#find'
  get 'crate/find/:id' => 'crate#find'
  post 'likes' => 'likes#create'
  delete 'likes' => 'likes#destroy'
  delete 'photos' => 'photos#destroy'

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
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
