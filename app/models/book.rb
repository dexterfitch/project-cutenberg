class Book < ActiveRecord::Base
  has_many :chapters
  belongs_to :author

  validates_associated :chapters, :author

  validates :title, :presence => true
  validates :summary, :presence => true

end
