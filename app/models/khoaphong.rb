class Khoaphong < ActiveRecord::Base
  belongs_to :nhomkhoaphong

  validates :ma, :presence => true
  validates :ten, :presence => true
  validates :nhomkhoaphong_id, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
