class AddWorkoutStats < ActiveRecord::Migration
  def up
    add_column    :workouts, :sample_size, :integer
    add_column    :workouts, :mean, :integer
    add_column    :workouts, :median, :integer
    add_column    :workouts, :standard_deviation, :integer
  end

  def down
    remove_column    :workouts, :sample_size, :integer
    remove_column    :workouts, :mean, :integer
    remove_column    :workouts, :median, :integer
    remove_column    :workouts, :standard_deviation, :integer
  end
end
