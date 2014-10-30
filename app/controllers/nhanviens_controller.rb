class NhanviensController < ApplicationController

  def index
    @nhanviens = Nhanvien.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html #index.html.erb
      format.js #index.js.erb
      format.json { render json: @nhanviens }
    end
  end

  def edit
    @nhanvien = Nhanvien.find(params[:id])
  end

  def update
    @nhanviens = Nhanvien.paginate(:page => params[:page], :per_page => 10)
    @nhanvien = Nhanvien.find(params[:id])

    respond_to do |format|
      if @nhanvien.update_attributes(nhanvien_params)
        format.html { redirect_to nhanviens_path, flash[:info] = 'Thong tin nhan vien da cap nhat thanh cong.' }
        format.js { flash[:info] = 'Thong tin nhan vien da cap nhat thanh cong.' }
        format.json { head :ok }
      else
        format.html { render :partial => 'edit' }
        format.json { render json: @nhanvien.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @nhanvien = Nhanvien.new

    respond_to do |format|
      format.html
      format.js
      format.json { render json: @nhanvien }
    end
  end

  def create
    @nhanviens = Nhanvien.paginate(:page => params[:page], :per_page => 10)
    @nhanvien = Nhanvien.new(nhanvien_params)

    respond_to do |format|
      if @nhanvien.save
        format.html { redirect_to nhanviens_path, flash[:info] = 'Nhan vien moi da duoc them thanh cong.' }
        format.js { flash[:info] = 'Nhan vien moi da duoc them thanh cong.' }
        format.json { render json: @nhanvien, status: :created, location: @nhanvien }
      else
        format.html { render :partial => 'new' }
        format.json { render json: @nhanvien.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @nhanvien = Nhanvien.find(params[:nhanvien_id])
  end

  def destroy
    @nhanvien = Nhanvien.find(params[:id])
    @nhanvien.destroy
    @nhanviens = Nhanvien.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html { redirect_to nhanviens_path, flash[:info]='Nhan vien da duoc xoa thanh cong.' }
      format.js { flash[:info]='Nhan vien da duoc xoa thanh cong.' }
      format.json { head :ok }
    end
  end

  def laythongtin
    # id = 10
    # a =  Nhanvien.find(10)
    # respond_to do |f|
    #   f.json {render :json => a}
    # end
    render :text => "da"
  end

  private
  def nhanvien_params
    params.require(:nhanvien).permit(:eid, :holot, :ten, :tenkhac, :email, :didong, :dienthoai, :quoctich, :dantoc,
                                     :ngaysinh, :namsinh, :gioitinh, :tongiao, :tinhtranghonnhan, :noisinh_xa, :noisinh_huyen, :noisinh_tinh,
                                     :nguyenquan_xa, :nguyenquan_huyen, :nguyenquan_tinh, :tamtru_duong, :tamtru_xa, :tamtru_huyen, :tamtru_tinh,
                                     :thuongtru_duong, :thuongtru_xa, :thuongtru_huyen, :thuongtru_tinh, :trinhdophothong, :ngoaingu, :trinhdongoaingu,
                                     :trinhdotinhoc, :bangcap, :nganhdaotao, :hedaotao, :noidaotao, :masothue, :taikhoannganhang, :nganhang,
                                     :socmnd, :ngaycapcmnd, :noicapcmnd, :tinhtrangsuckhoe, :chieucao, :cannang)
  end

end
