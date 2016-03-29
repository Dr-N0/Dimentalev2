Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home_page#index'

  post '/next', to: 'home_page#next'
  
  get '/no', to: 'home_page#no'
 
  get '/yes', to: 'home_page#yes'
  
  post '/yes', to: 'home_page#yes'
 
  post '/no', to: 'home_page#no'
 
  post '/enter', to: 'home_page#enter'
 
  post '/answer', to: 'home_page#answer'
 
  get '/answer', to: 'home_page#answer'
  
  get '/next', to: 'home_page#next'
  
  get '/re', to: 'home_page#re'
 
  get '/question', to: 'home_page#question'
 
  post '/question', to: 'home_page#question'
 
  post '/1', to: 'home_page#one'
 
  post '/2', to: 'home_page#two'
 
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
