module Danhmuc
  class NganhangsController < BaseController

    respond_to :html, :js

    def index
      @nganhangs = Nganhang.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    end

    def show
      @nganhang = Nganhang.find(params[:id])
    end

    def new
      @nganhang = Nganhang.new
    end

    def create
      @nganhangs = Nganhang.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @nganhang = Nganhang.create(nganhang_params)
    end

    def edit
      @nganhang = Nganhang.find(params[:id])
    end

    def update
      @nganhangs = Nganhang.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

      @nganhang = Nganhang.find(params[:id])
      @nganhang.update_attributes(nganhang_params)
    end

    def destroy
      @nganhangs = Nganhang.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @nganhang = Nganhang.find(params[:id])
      @nganhang.destroy
    end

    def delete
      @nganhang = Nganhang.find(params[:nganhang_id])
    end

    private
    def nganhang_params
      params.require(:nganhang).permit(:ma, :ten, :thongtin)
    end
  end
end