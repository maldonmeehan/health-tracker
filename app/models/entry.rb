class Entry < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  has_many :foods

  validates :day, :presence => true
end
