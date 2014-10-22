class TongiaosController < ApplicationController

  respond_to :html, :js

  def index
    @tongiaos = Tongiao.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @tongiao = Tongiao.find(params[:id])
  end

  def new
    @tongiao = Tongiao.new
  end

  def create
    @tongiaos = Tongiao.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    @tongiao = Tongiao.create(tongiao_params)
  end

  def edit
    @tongiao = Tongiao.find(params[:id])
  end

  def update
    @tongiaos = Tongiao.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

    @tongiao = Tongiao.find(params[:id])
    @tongiao.update_attributes(tongiao_params)
  end

  def destroy
    @tongiaos = Tongiao.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    @tongiao = Tongiao.find(params[:id])
    @tongiao.destroy
  end

  def delete
    @tongiao = Tongiao.find(params[:tongiao_id])
  end

  private
  def tongiao_params
    params.require(:tongiao).permit(:ma, :ten)
  end
end
