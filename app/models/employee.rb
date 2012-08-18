class Employee < ActiveRecord::Base
  belongs_to :company
  belongs_to :area
  belongs_to :employee_type
  belongs_to :function
  belongs_to :country
  has_many :employee_holidays
  has_many :travels
  has_many :trainnings
  has_many :salaries
          attr_accessible :area_id, :birth_date, :company_id, :country_id, :email, :employee_type_id, :end_date, :function_id, :home_phone, :mobile_phone, :name, :start_date, :trigram

  validates_presence_of :name, :trigram, :email, :country, :area, :employee_type, :function
  validates_uniqueness_of :name, :trigram, :email
  
end
