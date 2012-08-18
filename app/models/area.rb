class Area < ActiveRecord::Base
  has_many :functions
  attr_accessible :acronym, :name

  validates_presence_of :name
end
