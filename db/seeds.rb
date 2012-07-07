# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Equipment.delete_all
Equipment.create(name: "Room to run")
Equipment.create(name: "Pull-up bar")
Equipment.create(name: "Skipping rope")
Equipment.create(name: "Rings")

Workout.delete_all
Workout.create(title: 'Angie',
  description: 
    %{Complete in order:
100 pullups
100 pushups
100 situps
100 squats},
  source:   'http://crossfit.com')
Workout.where(:title => 'Angie') << Equipment.where(:name => 'Pull-up bar')
# . . .
Workout.create(title: 'Murph',
  description: 
    %{Run 1 mile
100 pullups
200 pushups
300 squats
Run 1 mile
Partition the pullups, pushups, and squats
as needed. Start and finish with a mile
run. If you've got a 20# vest or body
armor, wear it.},
  source:   'http://crossfit.com')
Workout.where(:title => 'Murph') << Equipment.where(:name => 'Room to run')
Workout.where(:title => 'Murph') << Equipment.where(:name => 'Pull-up bar')
# . . .
Workout.create(title: 'Barbara',
  description: 
    %{Complete 5 rounds, resting 3:00 between each round:
20 pullups
30 pushups
40 situps
50 squats},
  source:   'http://crossfit.com')
Workout.where(:title => 'Barbara') << Equipment.where(:name => 'Pull-up bar')
# . . .
Workout.create(title: 'Jason',
  description: 
    %{100 squats
5 muscle-ups
75 squats
10 muscle-ups
50 squats
15 muscle-ups
25 squats
20 muscle-ups},
  source:   'http://crossfit.com')
Workout.where(:title => 'Jason') << Equipment.where(:name => 'Rings')
# . . .
Workout.create(title: 'Burpees',
  description: 
    %{Perform as many Burpees as possible in 7 minutes.},
  source:   'http://crossfit.com')
# . . .
Role.create(:name => "Admin")
User.find(1).roles << Role.find(1)
