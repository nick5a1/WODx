class CreateEquipmentWorkoutsJoin < ActiveRecord::Migration
  def up
    create_table :equipment_workouts, :id => false do |t|
      t.references :workout
      t.references :equipment
  end
  add_index :equipment_workouts, ["workout_id", "equipment_id"]
  add_index :equipment_workouts, ["equipment_id", "workout_id"]
end
  
  def down
    drop_table :equipment_workouts
  end
end