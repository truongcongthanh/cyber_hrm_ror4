class PagesController < ApplicationController

  def home
  end

  def about
  end

  def signin

     render :json => Nhanvien.find(params[:id])
  end

end
