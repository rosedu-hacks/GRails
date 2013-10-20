UniversityRegistration::Application.routes.draw do
  mount RailsAdmin::Engine => '/administrator', :as => 'rails_admin'
  devise_for :users, :controllers => { :registrations => "registrations", :omniauth_callbacks => "omniauth_callbacks" }

  root to: 'static_pages#home'
  match :about, to: "static_pages#about", via: :get
  match :user_type, to: "static_pages#user_type", via: :get
  match :profile, to: "students#show", via: :get
  match :connect, to: "students#show_connections", via: :get
  match 'admission_forms/new', to: 'admission_forms#new', :via => :get, action: 'new'
  match 'admission_forms/populate', to: 'admission_forms#populate', :via => :post, action: 'populate'
  match 'registration_forms/new', to: 'registration_forms#new', :via => :get, action: 'new'
  match 'registration_forms/populate', to: 'registration_forms#populate', :via => :post, action: 'populate'

  resources :students
  resources :administrators
  resources :students
  resources :contacts
  resources :schools
  resources :diplomas
  resources :admissions
  resources :exams
  resources :administrators
end
