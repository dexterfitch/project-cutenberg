class Author < ActiveRecord::Base
  has_many :books

  validates :first_name, :presence => true
  # validates :middle_initial, :presence => true
  # validates :last_name, :presence => true
  validates :number, :presence => true

end
