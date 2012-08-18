class Institution < ActiveRecord::Base
  has_many :courses

  attr_accessible :name, :website

  validates_presence_of :name

  validates_uniqueness_of :name, :website
end
