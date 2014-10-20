class Tinhthanhpho < ActiveRecord::Base
  belongs_to :vungdialy

  validates :ma, :presence => true,:length => {:minimum => 2}
  validates :ten, :presence => true, :length => {:minimum => 3}
  validates :vungdialy_id, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
