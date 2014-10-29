class Nhanvien < ActiveRecord::Base

  belongs_to :tinhthanhpho
  belongs_to :phuongxa
  belongs_to :quanhuyen


  validates :eid, :presence => true
  validates :holot, :presence => true, :length => 2..50
  validates :ten, :presence => true
  validates :gioitinh, :presence => true
  validates :dantoc, :presence => true
  validates :tongiao, :presence => true
  validates :tinhtranghonnhan, :presence => true


end
