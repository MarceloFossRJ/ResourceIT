class CompanyHoliday < ActiveRecord::Base
  belongs_to :country

  attr_accessible :country_id, :day, :description

  validates_presence_of :day, :country_id

 
end
