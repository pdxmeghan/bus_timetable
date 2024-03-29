class Line < ActiveRecord::Base
  validates :name, presence: true
  has_many :stops
  has_many :buses
  has_many :stations, :through => :stops, dependent: :destroy
end
