Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    namespace :danhmuc do
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
      resources :dantocs do
        get "delete"
      end
      resources :tongiaos do
        get "delete"
      end
      resources :benhviens do
        get "delete"
      end
      resources :nganhangs do
        get "delete"
      end
      resources :bangcaps do
        get "delete"
      end
      resources :khoaphongs do
        get "delete"
      end
      resources :nhomchucdanhs do
        get "delete"
      end
      resources :chucdanhs do
        get "delete"
      end
      resources :nhomchucvus do
        get "delete"
      end
      resources :chucvus do
        get "delete"
      end
    end
    resources :nhanviens do
      get "delete"
    end
    root to: 'pages#home', :as => 'home'
    match '/javascripts/load_quanhuyen.js' => 'javascripts#load_quanhuyen.js', :via => :get
    match '/about' => 'pages#about', :via => :get
    match '/signin' => 'pages#signin', :via => [:get, :post]
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  match '', to: redirect("/#{I18n.default_locale}"), :via => [:get, :post]
end
