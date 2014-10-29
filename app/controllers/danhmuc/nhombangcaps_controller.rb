module Danhmuc
  class NhombangcapsController < BaseController

    respond_to :html, :js

    def index
      @nhombangcaps = Nhombangcap.all
    end

    def show
      @nhombangcap = Nhombangcap.find(params[:id])
    end

    def new
      @nhombangcap = Nhombangcap.new
    end

    def create
      @nhombangcaps = Nhombangcap.all
      @nhombangcap = Nhombangcap.create(nhombangcap_params)
    end

    def edit
      @nhombangcap = Nhombangcap.find(params[:id])
    end

    def update
      @nhombangcaps = Nhombangcap.all
      @nhombangcap = Nhombangcap.find(params[:id])

      @nhombangcap.update_attributes(nhombangcap_params)
    end

    def delete
      @nhombangcap = Nhombangcap.find(params[:nhombangcap_id])
    end

    def destroy
      @nhombangcaps = Nhombangcap.all
      @nhombangcap = Nhombangcap.find(params[:id])
      @nhombangcap.destroy
    end

    private
    def nhombangcap_params
      params.require(:nhombangcap).permit(:ma, :ten, :diengiai)
    end
  end
end