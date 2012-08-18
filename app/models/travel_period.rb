class TravelPeriod < ActiveRecord::Base
  belongs_to :travel_type
  belongs_to :country
  belongs_to :travel

  attr_accessible :country_id, :description, :end_date, :start_date, :travel_id, :travel_type_id

  validates_presence_of :start_date, :end_date, :description, :country, :travel_type_id, :travel_id

end
