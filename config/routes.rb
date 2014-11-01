Rails.application.routes.draw do
  # scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do

    namespace :danhmuc do
      match "/" => "base#index", :via => :get

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

    match '/about' => 'pages#about', :via => :get

    match '/laythongtinnhanvien' => 'pages#laythongtinnhanvien', :via => [:get, :post]
    match '/danh_sach_tinh_tp' => 'pages#danh_sach_tinh_tp', :via => [:get, :post],  :format => :json
    match '/danh_sach_quan_huyen' => 'pages#danh_sach_quan_huyen', :via => [:get, :post],  :format => :json
    match '/danh_sach_phuong_xa' => 'pages#danh_sach_phuong_xa', :via => [:get, :post],  :format => :json
    match '/quoctich' => 'pages#quoctich', :via => [:get],  :format => :json
    match '/dantoc' => 'pages#dantoc', :via => [:get],  :format => :json
    match '/tongiao' => 'pages#tongiao', :via => [:get],  :format => :json
    match '/gioitinh' => 'pages#gioitinh', :via => [:get],  :format => :json
    match '/tinhtranghonnhan' => 'pages#tinhtranghonnhan', :via => [:get],  :format => :json
    match '/nganhang' => 'pages#nganhang', :via => [:get],  :format => :json


  
  # match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  # match '', to: redirect("/#{I18n.default_locale}"), :via => [:get, :post]
end
