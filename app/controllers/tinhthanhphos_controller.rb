class TinhthanhphosController < ApplicationController

  helper_method :sort_column, :sort_direction
  respond_to :html, :js

  def index
    @tinhthanhphos  = Tinhthanhpho.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @tinhthanhpho = Tinhthanhpho.find(params[:id])
  end

  def edit
    @tinhthanhpho = Tinhthanhpho.find(params[:id])
  end

  def update
    @tinhthanhphos = Tinhthanhpho.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)

    @tinhthanhpho = Tinhthanhpho.find(params[:id])
    @tinhthanhpho.update_attributes(tinhthanhpho_params)
  end

  def new
    @tinhthanhpho = Tinhthanhpho.new
  end

  def create
    @tinhthanhphos = Tinhthanhpho.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @tinhthanhpho = Tinhthanhpho.create(tinhthanhpho_params)
  end

  def delete
    @tinhthanhphos = Tinhthanhpho.find(params[:tinhthanhpho_id])
  end

  def destroy
    @tinhthanhphos = Tinhthanhpho.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @tinhthanhpho = Tinhthanhpho.find(params[:id])
    @tinhthanhpho.destroy
  end

  private
  def tinhthanhpho_params
    params.require(:tinhthanhpho).permit(:ma,:ten,:vungdialy_id)
  end

  def sort_column
    Tinhthanhpho.column_names.include?(params[:sort]) ? params[:sort] : "ten"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
