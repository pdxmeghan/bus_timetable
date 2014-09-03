require 'rails_helper'

describe Arrival do
  it {should validate_presence_of :time}
  it {should belong_to :stop}
  it {should belong_to :bus}
end
