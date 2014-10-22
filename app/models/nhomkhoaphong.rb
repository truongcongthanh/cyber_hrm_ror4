class Nhomkhoaphong < ActiveRecord::Base

  has_many :khoaphongs

  validates :ma, :presence => true
  validates :ten, :presence => true
end
