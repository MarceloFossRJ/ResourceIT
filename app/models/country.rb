class Country < ActiveRecord::Base
  has_many :employees
  has_many :travel_periods
  has_many :company_holidays

  attr_accessible :acronym, :name

  validates_presence_of :name, :acronym
end
