require 'rails_helper'

describe Bus do
  it { should validate_presence_of :number }
  it { should belong_to :line }
end
