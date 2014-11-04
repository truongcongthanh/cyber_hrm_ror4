class Quoctich < ActiveRecord::Base

  has_many :nhanviens

  validates :ma, :presence => true,:length => {:minimum => 2}
  validates :ten, :presence => true, :length => {:minimum => 3}
end
