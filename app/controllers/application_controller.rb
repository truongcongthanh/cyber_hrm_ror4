class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :dangonngu

  # private

  # def set_locale
  #   I18n.locale = params[:locale] if params[:locale].present?
  # end

  # def default_url_options(option={})
  #   {locale: I18n.locale}
  # end

  def dangonngu
    I18n.config.load_path = Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]

    # lấy tham số truyền vào
    lang = params[:lang]

    if lang.nil? and session[:lang].nil?
      # thiết lập ngôn ngữ mặc định
      session[:lang] = "vn"
    else
      # lấy ngôn ngữ được chọn
      session[:lang] = lang unless lang.nil?
    end

    # gán ngôn ngữ
    I18n.locale = session[:lang]  end
end
