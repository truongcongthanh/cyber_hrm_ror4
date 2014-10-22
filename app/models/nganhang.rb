class Nganhang < ActiveRecord::Base

  validates :ma, :presence => true
  validates :ten, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
      where('ma LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
