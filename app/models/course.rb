class Course < ActiveRecord::Base
  belongs_to :unity
  belongs_to :institution
  has_many :trainnings

 attr_accessible :description, :institution_id, :name, :workload, :workload_unit_id

  validates_presence_of :name, :institution_id, :description
  validates_uniqueness_of :name
end
