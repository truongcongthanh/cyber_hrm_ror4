module Danhmuc
  class ChucdanhsController < BaseController

    respond_to :html, :js

    def index
      @chucdanhs = Chucdanh.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    end

    # def show
    #   @chucdanh = Chucdanh.find(params[:id])
    # end

    def new
      @chucdanh = Chucdanh.new
    end

    def create
      @chucdanhs = Chucdanh.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @chucdanh = Chucdanh.create(chucdanh_params)
    end

    def edit
      @chucdanh = Chucdanh.find(params[:id])
    end

    def update
      @chucdanhs = Chucdanh.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

      @chucdanh = Chucdanh.find(params[:id])
      @chucdanh.update_attributes(chucdanh_params)
    end

    def destroy
      @chucdanhs = Chucdanh.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @chucdanh = Chucdanh.find(params[:id])
      @chucdanh.destroy
    end

    def delete
      @chucdanh = Chucdanh.find(params[:chucdanh_id])
    end

    private
    def chucdanh_params
      params.require(:chucdanh).permit(:ma, :ten, :nhomchucdanh_id)
    end
  end
end