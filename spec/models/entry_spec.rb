require 'rails_helper'

describe Entry do
  it { should validate_presence_of :day }
end
