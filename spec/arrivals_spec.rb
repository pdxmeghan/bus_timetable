require 'rails_helper'

describe Arrival do
  it {should validate_presence_of :time}
end
