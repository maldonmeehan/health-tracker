require 'rails_helper'

describe Food do
  it { should validate_presence_of :item }
  it { should validate_presence_of :calorie }
  it { should validate_presence_of :measurment }
  it { should belong_to :entry }
end
