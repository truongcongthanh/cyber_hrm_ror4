Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :nhomkhoaphongs
    resources :tinhthanhphos
    resources :vungdialies
    resources :quoctiches
    root to: 'pages#home', :as => 'home'
    match '/about' => 'pages#about', :via => :get
    match '/signin' => 'pages#signin', :via => [:get, :post]
    match '/danhmuc' => 'categories#index', :via => :get
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get,:post]
  match '', to: redirect("/#{I18n.default_locale}"), :via => [:get,:post]
end
