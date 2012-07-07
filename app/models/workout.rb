class Workout < ActiveRecord::Base
  attr_accessible :description, :source, :title, :equipment_ids, :equipment
  has_and_belongs_to_many :equipment
end
