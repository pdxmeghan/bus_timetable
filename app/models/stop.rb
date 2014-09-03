class Stop < ActiveRecord::Base
  validates :line_id, presence: true
  validates :station_id, presence: true
  belongs_to :line
  belongs_to :station
  has_many :arrivals
end
