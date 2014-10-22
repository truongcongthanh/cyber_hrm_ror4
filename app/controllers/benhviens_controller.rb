class BenhviensController < ApplicationController

  respond_to :html, :js

  def index
    @benhviens = Benhvien.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @benhvien = Benhvien.find(params[:id])
  end

  def new
    @benhvien = Benhvien.new
  end

  def create
    @benhviens = Benhvien.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    @benhvien = Benhvien.create(benhvien_params)
  end

  def edit
    @benhvien = Benhvien.find(params[:id])
  end

  def update
    @benhviens = Benhvien.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

    @benhvien = Benhvien.find(params[:id])
    @benhvien.update_attributes(benhvien_params)
  end

  def destroy
    @benhviens = Benhvien.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    @benhvien = Benhvien.find(params[:id])
    @benhvien.destroy
  end

  def delete
    @benhvien = Benhvien.find(params[:benhvien_id])
  end

  private
  def benhvien_params
    params.require(:benhvien).permit(:ma,:ten, :diachi, :dienthoai)
  end
end
