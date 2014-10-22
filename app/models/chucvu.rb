class Chucvu < ActiveRecord::Base
  belongs_to :nhomchucvu

  validates :ma, :presence => true
  validates :ten, :presence => true
  validates :nhomchucvu_id, :presence => true

  def self.search(search)
    if search
      where('ten LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
