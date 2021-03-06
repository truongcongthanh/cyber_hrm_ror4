class PagesController < ApplicationController

  def home
  end

  def about
  end

  def laythongtinnhanvien
    nhanvien = Nhanvien.find(params[:id])
    noisinh_tinh = nhanvien.noisinh_tinh.blank? ? '' : Tinhthanhpho.where(id: nhanvien.noisinh_tinh).pluck(:ten)[0]
    noisinh_huyen = nhanvien.noisinh_huyen.blank? ? '' : Quanhuyen.where(id: nhanvien.noisinh_huyen).pluck(:ten)[0]
    noisinh_xa = nhanvien.noisinh_xa.blank? ? '' : Phuongxa.where(id: nhanvien.noisinh_xa).pluck(:ten)[0]
    nguyenquan_tinh = nhanvien.nguyenquan_tinh.blank? ? '' : Tinhthanhpho.where(id: nhanvien.nguyenquan_tinh).pluck(:ten)[0]
    nguyenquan_huyen = nhanvien.nguyenquan_huyen.blank? ? '' : Quanhuyen.where(id: nhanvien.nguyenquan_huyen).pluck(:ten)[0]
    nguyenquan_xa = nhanvien.nguyenquan_xa.blank? ? '' : Phuongxa.where(id: nhanvien.nguyenquan_xa).pluck(:ten)[0]
    thuongtru_tinh = nhanvien.thuongtru_tinh.blank? ? '' : Tinhthanhpho.where(id: nhanvien.thuongtru_tinh).pluck(:ten)[0]
    thuongtru_huyen = nhanvien.thuongtru_huyen.blank? ? '' : Quanhuyen.where(id: nhanvien.thuongtru_huyen).pluck(:ten)[0]
    thuongtru_xa = nhanvien.thuongtru_xa.blank? ? '' : Phuongxa.where(id: nhanvien.thuongtru_xa).pluck(:ten)[0]
    tamtru_tinh = nhanvien.tamtru_tinh.blank? ? '' : Tinhthanhpho.where(id: nhanvien.tamtru_tinh).pluck(:ten)[0]
    tamtru_huyen = nhanvien.tamtru_huyen.blank? ? '' : Quanhuyen.where(id: nhanvien.tamtru_huyen).pluck(:ten)[0]
    tamtru_xa = nhanvien.tamtru_xa.blank? ? '' : Phuongxa.where(id: nhanvien.tamtru_xa).pluck(:ten)[0]
    noicapcmnd = nhanvien.noicapcmnd.blank? ? '' : Tinhthanhpho.where(id: nhanvien.noicapcmnd).pluck(:ten)[0]

    arr = {"id" => nhanvien.id, "holot" => nhanvien.holot, "ten" => nhanvien.ten, "tenkhac" => nhanvien.tenkhac,
           "gioitinh" => nhanvien.gioitinh.blank? ? '' : nhanvien.gioitinh.ten, "gioitinh_id" => nhanvien.gioitinh.id,
           "ngaysinh" => nhanvien.ngaysinh.blank? ? '' : nhanvien.ngaysinh.strftime("%d/%m/%Y"), "namsinh" => nhanvien.namsinh.blank? ? '' : nhanvien.namsinh,
           "tinhtranghonnhan" => nhanvien.tinhtranghonnhan.blank? ? '' : nhanvien.tinhtranghonnhan.ten, "honnhan_id" => nhanvien.tinhtranghonnhan.blank? ? '' : nhanvien.tinhtranghonnhan.id,
           "quoctich" => nhanvien.quoctich.blank? ? '' : nhanvien.quoctich.ten, "quoctich_id" => nhanvien.quoctich.blank? ? '' : nhanvien.quoctich.id,
           "tongiao" => nhanvien.tongiao.blank? ? '' : nhanvien.tongiao.ten, "tongiao_id" => nhanvien.tongiao.blank? ? '' : nhanvien.tongiao.id,
           "dantoc" => nhanvien.dantoc.ten.blank? ? '' : nhanvien.dantoc.ten, "dantoc_id" => nhanvien.dantoc.id.blank? ? '' : nhanvien.dantoc.id,
           "noisinh_tinh" => noisinh_tinh, "noisinh_tinh_id" => nhanvien.noisinh_tinh.blank? ? '' : nhanvien.noisinh_tinh,
           "noisinh_huyen" => noisinh_huyen, "noisinh_huyen_id" => nhanvien.noisinh_huyen.blank? ? '' : nhanvien.noisinh_huyen,
           "noisinh_xa" => noisinh_xa, "noisinh_xa_id" => nhanvien.noisinh_xa.blank? ? '' : nhanvien.noisinh_xa,
           "nguyenquan_tinh" => nguyenquan_tinh, "nguyenquan_tinh_id" => nhanvien.nguyenquan_tinh.blank? ? '' : nhanvien.nguyenquan_tinh,
           "nguyenquan_huyen" => nguyenquan_huyen, "nguyenquan_huyen_id" => nhanvien.nguyenquan_huyen.blank? ? '' : nhanvien.nguyenquan_huyen,
           "nguyenquan_xa" => nguyenquan_xa, "nguyenquan_xa_id" => nhanvien.nguyenquan_xa.blank? ? '' : nhanvien.nguyenquan_xa,
           "thuongtru_duong" => nhanvien.thuongtru_duong, "thuongtru_tinh" => thuongtru_tinh, "thuongtru_tinh_id" => nhanvien.thuongtru_tinh.blank? ? '' : nhanvien.thuongtru_tinh,
           "thuongtru_huyen" => thuongtru_huyen, "thuongtru_huyen_id" => nhanvien.thuongtru_huyen.blank? ? '' : nhanvien.thuongtru_huyen,
           "thuongtru_xa" => thuongtru_xa, "thuongtru_xa_id" => nhanvien.thuongtru_xa.blank? ? '' : nhanvien.thuongtru_xa,
           "tamtru_duong" => nhanvien.tamtru_duong, "tamtru_tinh" => tamtru_tinh, "tamtru_tinh_id" => nhanvien.tamtru_tinh.blank? ? '' : nhanvien.tamtru_tinh,
           "tamtru_huyen" => tamtru_huyen, "tamtru_huyen_id" => nhanvien.tamtru_huyen.blank? ? '' : nhanvien.tamtru_huyen,
           "tamtru_xa" => tamtru_xa, "tamtru_xa_id" => nhanvien.tamtru_xa.blank? ? '' : nhanvien.tamtru_xa,
           "dienthoai" => nhanvien.dienthoai, "didong" => nhanvien.didong, "email" => nhanvien.email, "socmnd" => nhanvien.socmnd,
           "ngaycapcmnd" => nhanvien.ngaycapcmnd.blank? ? '' : nhanvien.ngaycapcmnd.strftime('%d/%m/%Y'),
           "noicapcmnd" => noicapcmnd, "noicapcmnd_id" => nhanvien.noicapcmnd.blank? ? '' : nhanvien.noicapcmnd, 
           "masothue" => nhanvien.masothue,
           "taikhoannganhang" => nhanvien.taikhoannganhang, 
           "nganhang" => nhanvien.nganhang.blank? ? '' : nhanvien.nganhang.ten,
           "nganhang_id" => nhanvien.nganhang.blank? ? '' : nhanvien.nganhang.id
         }
    render :json => arr

  end

  def gioitinh
    render :json => Gioitinh.all
  end

  def tinhtranghonnhan
    render :json => Tinhtranghonnhan.all
  end

  def dantoc
    render :json => Dantoc.all
  end

  def tongiao
    render :json => Tongiao.all
  end

  def quoctich
    render :json => Quoctich.all
  end

  def danh_sach_tinh_tp
    render :json => Tinhthanhpho.order(:vungdialy_id).order(:ma)
  end

  def danh_sach_quan_huyen
    tinhthanhpho = Tinhthanhpho.find(params[:id])
    render :json => tinhthanhpho.quanhuyens.order(:ma)
  end

  def danh_sach_phuong_xa
    quanhuyen = Quanhuyen.find(params[:id])
    render :json => quanhuyen.phuongxas.order(:ma)
  end

  def nganhang
    render :json => Nganhang.order(:ma)
  end
end
