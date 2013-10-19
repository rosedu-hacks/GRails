UniversityRegistration::Application.routes.draw do
  # Static pages
  root 'static_pages#home'
  get "static_pages/about"
  # Users pages
  devise_for :users

  resources :students
  resources :contacts
  resources :schools
  resources :diplomas
  resources :admissions
  resources :exams
  resources :administrators

  match 'admission_forms/new', to: 'admission_forms#new', :via => :get, action: 'new'
  match 'admission_forms/populate', to: 'admission_forms#populate', :via => :post, action: 'populate'

  match 'registration_forms/new', to: 'registration_forms#new', :via => :get, action: 'new'
  match 'registration_forms/populate', to: 'registration_forms#populate', :via => :post, action: 'populate'
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
