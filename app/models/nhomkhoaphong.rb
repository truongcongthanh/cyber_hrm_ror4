class Nhomkhoaphong < ActiveRecord::Base

  validates :ma, :presence => true
  validates :ten, :presence => true
end
