require 'rails_helper'

describe Stop do
  it { should validate_presence_of :line_id }
  it { should validate_presence_of :station_id }
  it { should belong_to :line }
  it { should belong_to :station }
end
