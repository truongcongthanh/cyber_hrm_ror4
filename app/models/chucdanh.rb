class Chucdanh < ActiveRecord::Base
  belongs_to :nhomchucdanh

  validates :ma, :presence => true
  validates :ten, :presence => true
  validates :nhomchucdanh_id, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
