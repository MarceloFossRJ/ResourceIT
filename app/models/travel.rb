class Travel < ActiveRecord::Base
  has_many :travel_periods
  belongs_to :employee

  attr_accessible :description, :employee_id, :name

  validates_presence_of :name, :description, :employee_id
end
