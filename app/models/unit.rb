class Unit < ActiveRecord::Base
  has_many :courses
  
  attr_accessible :name

  validates_presence_of :name
  validates_uniqueness_of :name
end
