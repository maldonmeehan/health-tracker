require 'rails_helper'

describe Activity do
  it { should validate_presence_of :step}
  it { should validate_presence_of :calorie}
  it { should validate_presence_of :minute}
  it { should belong_to :entry }
end
