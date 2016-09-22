class Food < ActiveRecord::Base
  belongs_to :entry

  validates :item, :presence => true
  validates :calorie, :presence => true
  validates :measurment, :presence => true
end
