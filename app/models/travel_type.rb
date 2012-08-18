class TravelType < ActiveRecord::Base
  has_many :travel_periods
  attr_accessible :name

  validates_presence_of :name
  validates_uniqueness_of :name
end
