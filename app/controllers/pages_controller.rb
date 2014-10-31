class PagesController < ApplicationController

  def home
  end

  def about
  end

  def laythongtinnhanvien
    render :json => Nhanvien.find(params[:id])
  end

  def danh_sach_tinh_tp
    render :json => Tinhthanhpho.order(:ma)
  end

  def danh_sach_quan_huyen
    render :json => Quanhuyen.order(:tinhthanhpho_id).order(:ma)
  end

  def danh_sach_phuong_xa
    render :json => Phuongxa.order(:quanhuyen_id).order(:ma)
  end

end
