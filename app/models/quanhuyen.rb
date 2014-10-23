class Quanhuyen < ActiveRecord::Base
  
  belongs_to :tinhthanhpho
  has_many :phuongxas
  validates :ma, :presence => true,:length => {:minimum => 2}
  validates :ten, :presence => true, :length => {:minimum => 3}
  validates :tinhthanhpho_id, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
