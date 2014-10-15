Rails.application.routes.draw do
  resources :tinhthanhphos

  resources :vungdialies

  resources :quoctiches

  root to: 'pages#home', :as => 'home'

  match '/about' => 'pages#about', :via => :get
  match '/signin' => 'pages#signin', :via => [:get,:post]
  match '/danhmuc' => 'categories#index', :via => :get
end
