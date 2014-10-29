module Danhmuc
  class VungdialiesController < BaseController

    respond_to :html, :js

    def index
      @vungdialies = Vungdialy.all
    end

    def show
      @vungdialy = Vungdialy.find(params[:id])
    end

    def edit
      @vungdialy = Vungdialy.find(params[:id])
    end

    def update
      @vungdialies = Vungdialy.all
      @vungdialy = Vungdialy.find(params[:id])

      @vungdialy.update_attributes(vungdialy_params)
    end

    def new
      @vungdialy = Vungdialy.new
    end

    def create
      @vungdialies = Vungdialy.all
      @vungdialy = Vungdialy.create(vungdialy_params)
    end

    def delete
      @vungdialy = Vungdialy.find(params[:vungdialy_id])
    end

    def destroy
      @vungdialies = Vungdialy.all
      @vungdialy = Vungdialy.find(params[:id])
      @vungdialy.destroy
    end

    private
    def vungdialy_params
      params.require(:vungdialy).permit(:ma, :ten)
    end

  end
end
