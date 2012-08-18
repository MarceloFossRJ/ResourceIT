class Company < ActiveRecord::Base
  has_many :employees
  attr_accessible :name

  validates_presence_of :name
end
