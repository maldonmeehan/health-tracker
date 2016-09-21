class Entry < ActiveRecord::Base
  validates :day, :presence => true
end
