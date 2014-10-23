class Nhanvien < ActiveRecord::Base

  has_one :tinhthanhpho, class_name: 'Tinhthanhpho', foreign_key: 'noisinh_tinh'
  has_one :tinhthanhpho, class_name: 'Tinhthanhpho', foreign_key: 'nguyenquan_tinh'
  has_one :tinhthanhpho, class_name: 'Tinhthanhpho', foreign_key: 'thuongtru_tinh'
  has_one :tinhthanhpho, class_name: 'Tinhthanhpho', foreign_key: 'tamtru_tinh'
  has_one :quanhuyen, class_name: 'Quanhuyen', foreign_key: 'noisinh_huyen'
  has_one :quanhuyen, class_name: 'Quanhuyen', foreign_key: 'nguyenquan_huyen'
  has_one :quanhuyen, class_name: 'Quanhuyen', foreign_key: 'thuongtru_huyen'
  has_one :quanhuyen, class_name: 'Quanhuyen', foreign_key: 'tamtru_huyen'
  has_one :phuongxa, class_name: 'phuongxa', foreign_key: 'noisinh_xa'
  has_one :phuongxa, class_name: 'phuongxa', foreign_key: 'nguyenquan_xa'
  has_one :phuongxa, class_name: 'phuongxa', foreign_key: 'thuongtru_xa'
  has_one :phuongxa, class_name: 'phuongxa', foreign_key: 'tamtru_xa'

end
