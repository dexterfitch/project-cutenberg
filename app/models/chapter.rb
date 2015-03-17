class Chapter < ActiveRecord::Base
  # belongs_to :book

  validates :title, :presence => true
  validates :body, :presence => true
  validates :number, :presence => true

end
