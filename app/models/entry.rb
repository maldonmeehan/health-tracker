class Entry < ActiveRecord::Base
  has_many :activities
  belongs_to :user

  validates :day, :presence => true
end
