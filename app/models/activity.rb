class Activity < ActiveRecord::Base
  belongs_to :entry

  validates :step, :presence => true
  validates :calorie, :presence => true
  validates :minute, :presence => true  
end
