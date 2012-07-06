class Workout < ActiveRecord::Base
  attr_accessible :description, :source, :title, :equipment_ids
  has_and_belongs_to_many :equipment
end
