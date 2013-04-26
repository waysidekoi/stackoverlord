Stackoverflow::Application.routes.draw do
  

  match "/questions/ask" => "questions#new"
  match '/question/:id/vote' => "votes#create", :as => :vote

  # resources :users, only: :create
  resources :sessions
  # resources :questions
  resources :answers

  # get "new_user" => "users#new", as: "user"

  # get "create" => "users#create", as: "create"

  get "questions/:id" => "questions#show", :as => :question
  post "questions" => "questions#create"

  post "users" => "users#create", as: "users"

  get "sign_up" => "users#new", as: "sign_up"  #allows you to access this route using 'sign_up_path' or 'sign_up_url'. Also lets you override the routes created by #resources.

  get "log_in" => "sessions#new", as: "log_in"

  get "log_in" => "sessions#new", as: "log_in"

  match 'exit' => 'sessions#destroy', :as => "logout"
  

  root :to => "home#index"

  ##logout?

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
