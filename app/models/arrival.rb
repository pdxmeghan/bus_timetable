class Arrival < ActiveRecord::Base
validates :time, presence: true
end
