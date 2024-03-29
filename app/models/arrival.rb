class Arrival < ActiveRecord::Base
  validates :time, presence: true
  belongs_to :stop
  belongs_to :bus

  def names
    "#{stop.station.name}" + " - " + "#{stop.line.name}"
  end
end
