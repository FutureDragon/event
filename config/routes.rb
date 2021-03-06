Rails.application.routes.draw do


  post '/rate' => 'rater#create', :as => 'rate'
  resources :answers
  resources :anfrages

  get 'anfrages/new/:id', to: 'anfrages#new'
  get 'anfrages/new/antwort/:id', to: 'anfrages#antwort'


  get 'answers/new/:id', to: 'answers#new'

  get 'welcome/index', to: 'welcome#index'
  get '/faq', to: 'welcome#faq'

  ActiveAdmin.routes(self)




  get 'users/show'

  get 'musics/all', to: 'musics#showAll'
  get 'musics/genre' , to: 'musics#genre'
  resources :musics

  get 'musics/show/:id', to: 'musics#showUser'



  get 'events/all', to: 'events#showAll'
  resources :events
  get 'events/show/:id', to: 'events#showUser'
  devise_for :users

  resources :users



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
