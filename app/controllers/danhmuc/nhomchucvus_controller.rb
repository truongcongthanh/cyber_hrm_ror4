module Danhmuc
  class NhomchucvusController < BaseController

    respond_to :html, :js

    def index
      @nhomchucvus = Nhomchucvu.all
    end

    def show
      @nhomchucvu = Nhomchucvu.find(params[:id])
    end

    def new
      @nhomchucvu = Nhomchucvu.new
    end

    def create
      @nhomchucvus = Nhomchucvu.all
      @nhomchucvu = Nhomchucvu.create(nhomchucvu_params)
    end

    def edit
      @nhomchucvu = Nhomchucvu.find(params[:id])
    end

    def update
      @nhomchucvus = Nhomchucvu.all
      @nhomchucvu = Nhomchucvu.find(params[:id])

      @nhomchucvu.update_attributes(nhomchucvu_params)
    end

    def delete
      @nhomchucvu = Nhomchucvu.find(params[:nhomchucvu_id])
    end

    def destroy
      @nhomchucvus = Nhomchucvu.all
      @nhomchucvu = Nhomchucvu.find(params[:id])
      @nhomchucvu.destroy
    end

    private
    def nhomchucvu_params
      params.require(:nhomchucvu).permit(:ma, :ten, :diengiai)
    end
  end
end
