class Vungdialy < ActiveRecord::Base

  has_many :tinhthanhphos

  validates :ma, :presence => true,:length => {:minimum => 2}
  validates :ten, :presence => true, :length => {:minimum => 3}
end
