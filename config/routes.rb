Rails.application.routes.draw do

  
  get 'home/index'
  
  get 'bulletin/:bulletin_id/posts/list' => 'post#list'
  get 'bulletin/:bulletin_id/posts/new' => 'post#new'
  post 'bulletin/:bulletin_id/posts/create' => 'post#create'
  
  get 'bulletin/:bulletin_id/posts/show/:id' => 'post#show'
  get 'bulletin/:bulletin_id/posts/edit/:id' => 'post#edit'
  get 'bulletin/:bulletin_id/posts/delete_complete/:id' => 'post#delete_complete'
  post 'bulletin/:bulletin_id/posts/edit_complete' => 'post#edit_complete'
  
  get 'bulletin/index'
  get 'bulletin/new'
  post 'bulletin/create'
  get "bulletin/show/:id" => 'bulletin#show'
  get 'bulletin/edit/:id' => 'bulletin#edit'
  get 'bulletin/delete_complete/:id' => 'bulletin#delete_complete'
  post 'bulletin/edit_complete'
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
