class QuanhuyensController < ApplicationController

  helper_method :sort_column, :sort_direction
  respond_to :html, :js

  def index
    @quanhuyens = Quanhuyen.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @quanhuyen = Quanhuyen.find(params[:id])
  end

  def edit
    @quanhuyen = Quanhuyen.find(params[:id])
  end

  def update
    @quanhuyens = Quanhuyen.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @quanhuyen = Quanhuyen.find(params[:id])
    @quanhuyen.update_attributes(quanhuyen_params)
  end

  def new
    @quanhuyen = Quanhuyen.new
  end

  def create
    @quanhuyens = Quanhuyen.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @quanhuyen = Quanhuyen.create(quanhuyen_params)
  end

  def delete
    @quanhuyen = Quanhuyen.find(params[:quanhuyen_id])
  end

  def destroy
    @quanhuyens = Quanhuyen.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @quanhuyen = Quanhuyen.find(params[:id])
    @quanhuyen.destroy
  end

  private
  def quanhuyen_params
    params.require(:tinhthanhpho).permit(:ma,:ten,:tinhthanhpho_id)
  end

  def sort_column
    Quanhuyen.column_names.include?(params[:sort]) ? params[:sort] : "ten"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
