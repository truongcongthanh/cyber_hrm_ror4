class Nhanvien < ActiveRecord::Base

  belongs_to :tinhthanhpho
  belongs_to :phuongxa
  belongs_to :quanhuyen

end
