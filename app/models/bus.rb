class Bus < ActiveRecord::Base
  validates :number, presence: true
  belongs_to :line
  has_many :arrivals
end
