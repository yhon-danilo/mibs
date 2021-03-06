Rails.application.routes.draw do
  
  

  resources :articulos do
    resources :referencia_articulos 
  end


  resources :sesiones
  
  resources :usuarios do
    resources :marcas 
  end

  resources :marcas do
    resources :articulos
  end

  #get 'referencia_articulos/comprar_articulo' => 'referencia_articulos#comprar_articulo' 
  #match '/comprar_articulo(/:id)' => 'referencia_articulos#comprar_articulo', via: [:get]
  get "cerrarsesion" => 'sesiones#logout', :as => 'cerrarsesion' 
  get "iniciarsesion" => 'sesiones#new', :as => 'iniciarsesion' 
  #post "referencia_articulos/comprar_articulo" => "referencia_articulos#comprar_articulo"
  
  match "signup", to: "users#new", via: [:get]
  match "profile", to: "sesioness#profile", via: [:get]
  match "setting", to: "sesiones#setting", via: [:get]
 #get "usuarios/new"
 #post "usuarios/create"
  #get "usuarios/edit"
  #get "usuarios/update"
  #get "usuarios/delete"
  namespace :administrador do
    resources :usuarios
  end
  namespace :administrador do
    resources :marcas
  end
  #resources :usuarios
  #get 'usuarios/show'
  #get 'usuarios/edit'
  #get 'usuarios/new'
  #post 'usuarios/create'
  root to: "sesiones#new"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get '/referencia_articulos/:id/comprar_articulo' => 'referencia_articulos#comprar_articulo', as: :comprar_articulo
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
