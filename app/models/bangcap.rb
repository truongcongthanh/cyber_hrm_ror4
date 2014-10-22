class Bangcap < ActiveRecord::Base
  belongs_to :nhombangcap

  validates :ma, :presence => true
  validates :ten, :presence => true
  validates :nhombangcap_id, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
