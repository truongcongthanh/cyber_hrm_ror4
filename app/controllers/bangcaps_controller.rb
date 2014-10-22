class BangcapsController < ApplicationController

  respond_to :html, :js

  def index
    @bangcaps = Bangcap.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @bangcap = Bangcap.find(params[:id])
  end

  def new
    @bangcap = Bangcap.new
  end

  def create
    @bangcaps = Bangcap.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    @bangcap = Bangcap.create(bangcap_params)
  end

  def edit
    @bangcap = Bangcap.find(params[:id])
  end

  def update
    @bangcaps = Bangcap.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

    @bangcap = Bangcap.find(params[:id])
    @bangcap.update_attributes(bangcap_params)
  end

  def destroy
    @bangcaps = Bangcap.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    @bangcap = Bangcap.find(params[:id])
    @bangcap.destroy
  end

  def delete
    @bangcap = Bangcap.find(params[:bangcap_id])
  end

  private
  def bangcap_params
    params.require(:bangcap).permit(:ma,:ten, :nhombangcap_id)
  end
end
