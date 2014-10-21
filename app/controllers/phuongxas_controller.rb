class PhuongxasController < ApplicationController

  helper_method :sort_column, :sort_direction
  respond_to :html, :js

  def index
    @phuongxas = Phuongxa.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @phuongxa = Phuongxa.find(params[:id])
  end

  def edit
    @phuongxa = Phuongxa.find(params[:id])
  end

  def update
    @phuongxas = Phuongxa.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @phuongxa = Phuongxa.find(params[:id])
    @phuongxa.update_attributes(phuongxa_params)
  end

  def new
    @phuongxa = Phuongxa.new
  end

  def create
    @phuongxas = Phuongxa.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @phuongxa = Phuongxa.create(phuongxa_params)
  end

  def delete
    @phuongxa = Phuongxa.find(params[:phuongxa_id])
  end

  def destroy
    @phuongxas = Phuongxa.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @phuongxa = Phuongxa.find(params[:id])
    @phuongxa.destroy
  end

  private
  def phuongxa_params
    params.require(:phuongxa).permit(:ma,:ten,:quanhuyen_id)
  end

  def sort_column
    Phuongxa.column_names.include?(params[:sort]) ? params[:sort] : "ten"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
