class Entry < ActiveRecord::Base
  has_many :activities
  belongs_to :user
  has_many :foods

  validates :day, :presence => true
end
