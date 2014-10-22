Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :nhombangcaps do
      get "delete"
    end
    resources :nhomkhoaphongs do
      get "delete"
    end
    resources :quoctiches do
      get "delete"
    end
    resources :vungdialies do
      get "delete"
    end
    resources :tinhthanhphos do
      get "delete"
    end
    resources :quanhuyens do
      get "delete"
    end
    resources :phuongxas do
      get "delete"
    end
    root to: 'pages#home', :as => 'home'
    match '/about' => 'pages#about', :via => :get
    match '/signin' => 'pages#signin', :via => [:get, :post]
    match '/danhmuc' => 'categories#index', :via => :get
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  match '', to: redirect("/#{I18n.default_locale}"), :via => [:get, :post]
end
