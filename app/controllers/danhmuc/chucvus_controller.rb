module Danhmuc
  class ChucvusController < BaseController

    respond_to :html, :js

    def index
      @chucvus = Chucvu.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
    end

    # def show
    #   @chucvu = Chucvu.find(params[:id])
    # end

    def new
      @chucvu = Chucvu.new
    end

    def create
      @chucvus = Chucvu.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @chucvu = Chucvu.create(chucvu_params)
    end

    def edit
      @chucvu = Chucvu.find(params[:id])
    end

    def update
      @chucvus = Chucvu.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)

      @chucvu = Chucvu.find(params[:id])
      @chucvu.update_attributes(chucvu_params)
    end

    def destroy
      @chucvus = Chucvu.search(params[:search]).order(:ten).paginate(:page => params[:page], :per_page => 12)
      @chucvu = Chucvu.find(params[:id])
      @chucvu.destroy
    end

    def delete
      @chucvu = Chucvu.find(params[:chucvu_id])
    end

    private
    def chucvu_params
      params.require(:chucvu).permit(:ma, :ten, :nhomchucvu_id)
    end
  end
end