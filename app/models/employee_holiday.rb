class EmployeeHoliday < ActiveRecord::Base
  belongs_to :employee

  attr_accessible :employee_id, :end, :start_date

  validates_presence_of :start_date, :end_date, :employee_id
end
