class CreateNhanviens < ActiveRecord::Migration
  def up
    create_table :nhanviens do |t|
      t.string 'eid', :null => false
      t.string 'holot', :null => false, :limit => 50
      t.string 'ten', :null => false, :limit => 25
      t.string 'tenkhac', :limit => 50
      t.datetime 'ngaysinh'
      t.integer 'namsinh'
      t.integer 'gioitinh'
      t.integer 'quoctich'
      t.integer 'dantoc'
      t.integer 'tongiao'
      t.string 'email', :limit => 100
      t.string 'didong', :limit => 20
      t.string 'dienthoai', :limit => 20
      t.integer 'tinhtranghonnhan'
      t.integer 'noisinh_xa'
      t.integer 'noisinh_huyen'
      t.integer 'noisinh_tinh'
      t.integer 'nguyenquan_xa'
      t.integer 'nguyenquan_huyen'
      t.integer 'nguyenquan_tinh'
      t.string 'tamtru_duong'
      t.integer 'tamtru_xa'
      t.integer 'tamtru_huyen'
      t.integer 'tamtru_tinh'
      t.string 'thuongtru_duong'
      t.integer 'thuongtru_xa'
      t.integer 'thuongtru_huyen'
      t.integer 'thuongtru_tinh'
      t.integer 'chucdanh'
      t.integer 'trinhdophothong'
      t.integer 'nganhdaotao'
      t.integer 'bangcap'
      t.integer 'hedaotao'
      t.integer 'noidaotao'
      t.integer 'hocham'
      t.integer 'lyluanchinhtri'
      t.integer 'quanlynhanuoc'
      t.integer 'namtotnghiepquanlynhanuoc'
      t.string 'socmnd', :limit => 20
      t.integer 'noicapcmnd'
      t.datetime 'ngaycapcmnd'
      t.string 'masothue', :limit => 50
      t.string 'taikhoannganhang', :limit => 50
      t.integer 'nganhang'
      t.integer 'ngoaingu'
      t.integer 'trinhdongoaingu'
      t.integer 'trinhdotinhoc'
      t.integer 'tiengdantoc'
      t.integer 'trinhdotiengdantoc'
      t.integer 'tinhtrangsuckhoe'
      t.decimal 'chieucao'
      t.decimal 'cannang'
      t.string 'doanvien'
      t.datetime 'ngayvaodoan'
      t.string 'sothedoan'
      t.string 'noicapthedoan'
      t.string 'dangvien'
      t.datetime 'ngaydubidang'
      t.datetime 'ngaychinhthucdang'
      t.string 'sothedang'
      t.string 'noicapthedang'
      t.string 'bodoi'
      t.string 'songhiavuquansu'
      t.datetime 'ngaynhapngu'
      t.datetime 'ngayxuatngu'
      t.string 'quanham'
      t.string 'sosolaodong'
      t.datetime 'ngaycapsolaodong'
      t.string 'noicapsolaodong'
      t.integer 'trangthai'

      t.timestamps
    end
  end

  def down
    drop_table :nhanviens
  end
end
