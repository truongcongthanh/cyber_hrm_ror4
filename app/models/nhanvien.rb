class Nhanvien < ActiveRecord::Base

  belongs_to :tinhthanhpho
  belongs_to :phuongxa
  belongs_to :quanhuyen
  belongs_to :gioitinh, :foreign_key => :gioitinh
  belongs_to :tinhtranghonnhan, :foreign_key => :tinhtranghonnhan
  belongs_to :quoctich, :foreign_key => :quoctich
  belongs_to :tongiao, :foreign_key => :tongiao
  belongs_to :nganhang, :foreign_key => :nganhang

  validates :eid, :presence => true
  validates :holot, :presence => true, :length => 2..50
  validates :ten, :presence => true
  validates :gioitinh, :presence => true
  validates :dantoc, :presence => true
  validates :tongiao, :presence => true
  validates :tinhtranghonnhan, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end
end




