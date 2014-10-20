class NhomkhoaphongsController < ApplicationController

  respond_to :html, :js

  def index
    @nhomkhoaphongs = Nhomkhoaphong.all
  end

  def show
    @nhomkhoaphong = Nhomkhoaphong.find(params[:id])
  end

  def new
    @nhomkhoaphong = Nhomkhoaphong.new
  end

  def create
    @nhomkhoaphongs = Nhomkhoaphong.all
    @nhomkhoaphong = Nhomkhoaphong.create(nhomkhoaphong_params)
  end

  def edit
    @nhomkhoaphong = Nhomkhoaphong.find(params[:id])
  end

  def update
    @nhomkhoaphongs = Nhomkhoaphong.all

    @nhomkhoaphong = Nhomkhoaphong.find(params[:id])
    @nhomkhoaphong.update_attributes(nhomkhoaphong_params)
  end

  def destroy
    @nhomkhoaphongs = Nhomkhoaphong.all
    @nhomkhoaphong = Nhomkhoaphong.find(params[:id])
    @nhomkhoaphong.destroy
  end

  def delete
    @nhomkhoaphong = Nhomkhoaphong.find(params[:nhomkhoaphong_id])
  end

  private
  def nhomkhoaphong_params
    params.require(:nhomkhoaphong).permit(:ma,:ten)
  end

end
