module Danhmuc
  class QuoctichesController < BaseController

    respond_to :html, :js

    def index
      @quoctiches = Quoctich.all
    end

    def new
      @quoctich = Quoctich.new
    end

    def create
      @quoctiches = Quoctich.all
      @quoctich = Quoctich.create(quoctich_params)
    end

    def edit
      @quoctich = Quoctich.find(params[:id])
    end

    def update
      @quoctiches = Quoctich.all
      @quoctich = Quoctich.find(params[:id])
      @quoctich.update_attributes(quoctich_params)
    end

    def show
      @quoctich = Quoctich.find(params[:id])
    end

    def destroy
      @quoctiches = Quoctich.all
      @quoctich = Quoctich.find(params[:id])
      @quoctich.destroy
    end

    def delete
      @quoctich = Quoctich.find(params[:quoctich_id])
    end

    private
    def quoctich_params
      params.require(:quoctich).permit(:ma, :ten)
    end
  end
end
