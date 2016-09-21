class Entry < ActiveRecord::Base
  has_many :activities

  validates :day, :presence => true
end
