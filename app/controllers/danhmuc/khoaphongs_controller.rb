module Danhmuc
  class KhoaphongsController < BaseController

    respond_to :html, :js

    def index
      @khoaphongs = Khoaphong.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    end

    def show
      @khoaphong = Khoaphong.find(params[:id])
    end

    def new
      @khoaphong = Khoaphong.new
    end

    def create
      @khoaphongs = Khoaphong.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @khoaphong = Khoaphong.create(khoaphong_params)
    end

    def edit
      @khoaphong = Khoaphong.find(params[:id])
    end

    def update
      @khoaphongs = Khoaphong.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

      @khoaphong = Khoaphong.find(params[:id])
      @khoaphong.update_attributes(khoaphong_params)
    end

    def destroy
      @khoaphongs = Khoaphong.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @khoaphong = Khoaphong.find(params[:id])
      @khoaphong.destroy
    end

    def delete
      @khoaphong = Khoaphong.find(params[:khoaphong_id])
    end

    private
    def khoaphong_params
      params.require(:khoaphong).permit(:ma, :ten, :nhomkhoaphong_id)
    end
  end
end