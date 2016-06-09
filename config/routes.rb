Rails.application.routes.draw do

  get "/dashboard", :controller=> "dashboard", :action => "index"

  # Routes for the Word resource:
  # CREATE
  get "/words/new", :controller => "words", :action => "new"
  post "/create_word", :controller => "words", :action => "create"

  # READ
  get "/words", :controller => "words", :action => "index"
  get "/words/:id", :controller => "words", :action => "show"

  # UPDATE
  get "/words/:id/edit", :controller => "words", :action => "edit"
  post "/update_word/:id", :controller => "words", :action => "update"

  # DELETE
  get "/delete_word/:id", :controller => "words", :action => "destroy"
  #------------------------------

  # Routes for the Food resource:
  # CREATE
  get "/foods/new", :controller => "foods", :action => "new"
  post "/create_food", :controller => "foods", :action => "create"

  # READ
  get "/foods", :controller => "foods", :action => "index"
  get "/foods/:id", :controller => "foods", :action => "show"

  # UPDATE
  get "/foods/:id/edit", :controller => "foods", :action => "edit"
  post "/update_food/:id", :controller => "foods", :action => "update"

  # DELETE
  get "/delete_food/:id", :controller => "foods", :action => "destroy"
  #------------------------------

  # Routes for the Child resource:
  # CREATE
  get "/children/new", :controller => "children", :action => "new"
  post "/create_child", :controller => "children", :action => "create"

  # READ
  get "/children", :controller => "children", :action => "index"
  get "/children/:id", :controller => "children", :action => "show"

  # UPDATE
  get "/children/:id/edit", :controller => "children", :action => "edit"
  post "/update_child/:id", :controller => "children", :action => "update"

  # DELETE
  get "/delete_child/:id", :controller => "children", :action => "destroy"
  #------------------------------

  # Routes for the Symptom resource:
  # CREATE
  get "/symptoms/new", :controller => "symptoms", :action => "new"
  post "/create_symptom", :controller => "symptoms", :action => "create"

  # READ
  get "/symptoms", :controller => "symptoms", :action => "index"
  get "/symptoms/:id", :controller => "symptoms", :action => "show"

  # UPDATE
  get "/symptoms/:id/edit", :controller => "symptoms", :action => "edit"
  post "/update_symptom/:id", :controller => "symptoms", :action => "update"

  # DELETE
  get "/delete_symptom/:id", :controller => "symptoms", :action => "destroy"
  #------------------------------

  # Routes for the Sleep resource:
  # CREATE
  get "/sleeps/new", :controller => "sleeps", :action => "new"
  post "/create_sleep", :controller => "sleeps", :action => "create"

  # READ
  get "/sleeps", :controller => "sleeps", :action => "index"
  get "/sleeps/:id", :controller => "sleeps", :action => "show"

  # UPDATE
  get "/sleeps/:id/edit", :controller => "sleeps", :action => "edit"
  post "/update_sleep/:id", :controller => "sleeps", :action => "update"

  # DELETE
  get "/delete_sleep/:id", :controller => "sleeps", :action => "destroy"
  #------------------------------

  get "/switch_child", :controller => "children", :action => "switch_child"


  devise_for :users
  root 'dashboard#index'

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
