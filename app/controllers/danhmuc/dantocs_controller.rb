module Danhmuc
  class DantocsController < BaseController

    respond_to :html, :js

    def index
      @dantocs = Dantoc.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    end

    def show
      @dantoc = Dantoc.find(params[:id])
    end

    def new
      @dantoc = Dantoc.new
    end

    def create
      @dantocs = Dantoc.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @dantoc = Dantoc.create(dantoc_params)
    end

    def edit
      @dantoc = Dantoc.find(params[:id])
    end

    def update
      @dantocs = Dantoc.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

      @dantoc = Dantoc.find(params[:id])
      @dantoc.update_attributes(dantoc_params)
    end

    def destroy
      @dantocs = Dantoc.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @dantoc = Dantoc.find(params[:id])
      @dantoc.destroy
    end

    def delete
      @dantoc = Dantoc.find(params[:dantoc_id])
    end

    private
    def dantoc_params
      params.require(:dantoc).permit(:ma, :ten)
    end

  end
end