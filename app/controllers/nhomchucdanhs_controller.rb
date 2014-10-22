class NhomchucdanhsController < ApplicationController

  respond_to :html, :js

  def index
    @nhomchucdanhs = Nhomchucdanh.all
  end

  def show
    @nhomchucdanh = Nhomchucdanh.find(params[:id])
  end

  def new
    @nhomchucdanh = Nhomchucdanh.new
  end

  def create
    @nhomchucdanhs = Nhomchucdanh.all
    @nhomchucdanh = Nhomchucdanh.create(nhomchucdanh_params)
  end

  def edit
    @nhomchucdanh = Nhomchucdanh.find(params[:id])
  end

  def update
    @nhomchucdanhs = Nhomchucdanh.all
    @nhomchucdanh = Nhomchucdanh.find(params[:id])

    @nhomchucdanh.update_attributes(nhomchucdanh_params)
  end

  def delete
    @nhomchucdanh = Nhomchucdanh.find(params[:nhomchucdanh_id])
  end

  def destroy
    @nhomchucdanhs = Nhomchucdanh.all
    @nhomchucdanh = Nhomchucdanh.find(params[:id])
    @nhomchucdanh.destroy
  end

  private
  def nhomchucdanh_params
    params.require(:nhomchucdanh).permit(:ma, :ten,:diengiai)
  end
end
