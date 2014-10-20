class Nhombangcap < ActiveRecord::Base

  validates :ma, :presence => true, :length => {:minimum => 2}
  validates :ten, :presence => true, :length => {:minimum => 5}
end
