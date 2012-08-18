class Trainning < ActiveRecord::Base
  belongs_to :employee
  belongs_to :course

  attr_accessible :course_id, :employee_id, :end_date, :start_date, :motivation

  validates_presence_of :course_id, :employee_id, :motivation, :end_date, :start_date
end
