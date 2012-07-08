class Workout < ActiveRecord::Base
  attr_accessible :description, :source, :title, :equipment_ids, :equipment, :sample_size, :mean, :median, :standard_deviation
  has_and_belongs_to_many :equipment
end
