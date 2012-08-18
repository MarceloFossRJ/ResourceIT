class Function < ActiveRecord::Base
  belongs_to :area
  has_many :employees
  
  attr_accessible :area_id, :name

  validates_presence_of :name, :area_id
end
