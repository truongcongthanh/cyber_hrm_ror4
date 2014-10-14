Rails.application.routes.draw do
  root to: 'pages#home', :as => 'home'

  match '/about' => 'pages#about', :via => :get
  match '/signin' => 'pages#signin', :via => [:get,:post]

end
