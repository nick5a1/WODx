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
Equipment.create(name: "Box")
Equipment.create(name: "Medicine ball")
Equipment.create(name: "Dumbbells")
Equipment.create(name: "Kettlebell")
Equipment.create(name: "Barbell & weights")
Equipment.create(name: "Bench")
Equipment.create(name: "Squat rack")
Equipment.create(name: "Rope")
Equipment.create(name: "Rowing machine")
Equipment.create(name: "Paralettes")
Equipment.create(name: "Rings")


Workout.delete_all
Workout.create(title: 'Angie',
  description: 
    %{Complete in order:
100 pullups
100 pushups
100 situps
100 squats},
  source:   'http://crossfit.com',
  :equipment => Equipment.where(:name => 'Pull-up bar'))
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
  source:   'http://crossfit.com',
  :equipment => Equipment.where(:name => ['Room to run','Pull-up bar']))
# . . .
Workout.create(title: 'Barbara',
  description: 
    %{Complete 5 rounds, resting 3:00 between each round:
20 pullups
30 pushups
40 situps
50 squats},
  source:   'http://crossfit.com',
  :equipment => Equipment.where(:name => 'Pull-up bar'))
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
  source:   'http://crossfit.com',
  :equipment => Equipment.where(:name => 'Rings'))
# . . .
Workout.create(title: 'Burpees',
  description: 
    %{Perform as many Burpees as possible in 7 minutes.},
  source:   'http://crossfit.com')
# . . .
#Role.create(:name => "Admin")
#User.find(1).roles << Role.find(1)
Workout.create(title: 'Wall Balls, Toes-to-Bar',
  description: 
  %{For time:
50 Wall ball shots, 20 pound ball
25 Toes-to-bar
40 Wall ball shots, 20 pound ball
20 Toes-to-bar
30 Wall ball shots, 20 pound ball
15 Toes-to-bar
20 Wall ball shots, 20 pound ball
10 Toes-to-bar
10 Wall ball shots, 20 pound ball
5 Toes-to-bar

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jul/06',
  :equipment => Equipment.where(:name => ["Medicine ball"]),
  sample_size: 117,
  mean: 18,
  median: 16,
  standard_deviation: 4)
# . . .
Workout.create(title: 'Overhead Squat 5-3-3-3-1-1-1-1-1',
  description: 
  %{Overhead Squat 5-3-3-3-1-1-1-1-1},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jul/05',
  :equipment => Equipment.where(:name => ["Squat rack", "Barbell & weights"]),
  sample_size: 129,
  mean: 0,
  median: 0,
  standard_deviation: 0)
# . . .
Workout.create(title: 'Tumilson',
  description: 
  %{8 rounds for time of:
Run 200 meters
11 Dumbbell burpee deadlifts, 60 pound dumbbells

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jul/04',
  :equipment => Equipment.where(:name => ["Room to run"]),
  sample_size: 234,
  mean: 22,
  median: 20,
  standard_deviation: 5)
# . . .
Workout.create(title: 'Burpees, Sit-ups, Kettlebell Swings, Pull-ups, Handstand Push-ups',
  description: 
  %{For Time:
70 Burpees 
60 Sit-ups 
50 Kettlebell Swings 1.5 pood
40 Pull-ups 
30 Handstand Push-ups 

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jul/02',
  :equipment => Equipment.where(:name => ["Pull-up bar"]),
  sample_size: 373,
  mean: 21,
  median: 19,
  standard_deviation: 4)
# . . .
Workout.create(title: 'Nasty Girls',
  description: 
  %{3 rounds for time of:

50 Squats,
7 Muscle-ups,
135 pound Hang power cleans, 10 reps.
},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jul/01',
  :equipment => Equipment.where(:name => ["Rings"]),
  sample_size: 341,
  mean: 16,
  median: 14,
  standard_deviation: 5)
# . . .
Workout.create(title: 'Brenton',
  description: 
  %{Five rounds for time of:
Bear crawl 100 feet
Standing broad-jump, 100 feet

Do three Burpees after every five broad-jumps. If you've got a twenty pound vest or body armor, wear it.

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/30',
  :equipment => Equipment.where(:name => ["Room to run"]),
  sample_size: 190,
  mean: 15,
  median: 13,
  standard_deviation: 5)
# . . .
Workout.create(title: 'Push Press, Chest-to-bar Pull-ups, Pistols',
  description: 
  %{Complete as many rounds as possible in 12 minutes of:
115 pound Push press, 12 reps
12 Chest to bar pull-ups
12 One-legged squats

Post total rounds.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/28',
  :equipment => Equipment.where(:name => ["Pull-up bar"]),
  sample_size: 369,
  mean: 0,
  median: 0,
  standard_deviation: 0)
# . . .
Workout.create(title: 'Back Squat 1-1-1-1-1-1-1',
  description: 
  %{Back Squat 1-1-1-1-1-1-1},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/27',
  :equipment => Equipment.where(:name => ["Squat rack", "Barbell & weights"]),
  sample_size: 257,
  mean: 0,
  median: 0,
  standard_deviation: 0)
# . . .
Workout.create(title: 'SQT',
  description: 
  %{Three rounds for time of:
95 pound Ground to overhead, 10 reps
200 yard Shuttle sprint, 50 yards there and back twice

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/26',
  :equipment => Equipment.where(:name => ["Room to run"]),
  sample_size: 482,
  mean: 7,
  median: 5,
  standard_deviation: 3)
# . . .
Workout.create(title: 'Strange',
  description: 
  %{Eight rounds for time of:
600 meter Run
1.5 pood Weighted pull-up, 11 reps
11 Walking lunge steps, carrying 1.5 pood kettlebells
1.5 pood Kettlebell thruster, 11 reps


Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/24',
  :equipment => Equipment.where(:name => ["Pull-up bar"]),
  sample_size: 182,
  mean: 48,
  median: 46,
  standard_deviation: 20)
# . . .
Workout.create(title: 'Knees-to-elbows, Hip Extensions, Handstand Walks, Box Jumps',
  description: 
  %{Five rounds for time of:
15 Knees to elbows
15 Hip extensions
Handstand walk 15 meters
15 Box jumps, 24" box

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/23',
  :equipment => Equipment.where(:name => ["Pull-up bar"]),
  sample_size: 175,
  mean: 21,
  median: 20,
  standard_deviation: 6)
# . . .
Workout.create(title: 'Bench Press 5-5-5-5-5',
  description: 
  %{Bench Press 5-5-5-5-5},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/22',
  :equipment => Equipment.where(:name => ["Barbell & weights"]),
  sample_size: 303,
  mean: 0,
  median: 0,
  standard_deviation: 0)
# . . .
Workout.create(title: 'Deadlifts, Thrusters',
  description: 
  %{21-15-9 reps of:
Deadlifts 225 lbs
Thrusters 95 lbs

Post total time.  },
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/20',
  :equipment => Equipment.where(:name => ["Barbell & weights"]),
  sample_size: 414,
  mean: 10,
  median: 9,
  standard_deviation: 3)
# . . .
Workout.create(title: 'Nick',
  description: 
  %{12 rounds for time of:
45 pound Dumbbell hang squat clean, 10 reps
6 Handstand push-ups on dumbbells

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/19',
  :equipment => Equipment.where(:name => ["Dumbbells"]),
  sample_size: 317,
  mean: 27,
  median: 25,
  standard_deviation: 8)
# . . .
Workout.create(title: 'Snatch 2-2-2-2-2-2-2',
  description: 
  %{Snatch 2-2-2-2-2-2-2},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/18',
  :equipment => Equipment.where(:name => ["Barbell & weights"]),
  sample_size: 237,
  mean: 0,
  median: 0,
  standard_deviation: 0)
# . . .
Workout.create(title: 'Push-ups, Sprints',
  description: 
  %{10 rounds, each for time of:
15 Push-ups
Sprint 60 yards
Rest 60 seconds

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/16',
  :equipment => Equipment.where(:name => ["Room to run"]),
  sample_size: 318,
  mean: 14,
  median: 14,
  standard_deviation: 4)
# . . .
Workout.create(title: 'Amanda',
  description: 
  %{9-7-5 reps of:
Muscle-ups 
Squat Snatch, 135 lbs

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/15',
  :equipment => Equipment.where(:name => ["Rings"]),
  sample_size: 204,
  mean: 15,
  median: 12,
  standard_deviation: 8)
# . . .
Workout.create(title: 'Sprint Triathlon',
  description: 
  %{For Time:
Swim 750 meters
Bike 20K
Run 5K

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/14',
  :equipment => Equipment.where(:name => ["Room to run"]),
  sample_size: 30,
  mean: 73,
  median: 81,
  standard_deviation: 32)
# . . .
Workout.create(title: 'Run, Double Unders, Burpees',
  description: 
  %{For time:
Run 1600 meters
150 Double-unders
50 Burpees
Run 800 meters
100 Double-unders
35 Burpees
Run 400 meters
50 Double-unders
20 Burpees

Post time.  },
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/12',
  :equipment => Equipment.where(:name => ["Room to run"]),
  sample_size: 510,
  mean: 36,
  median: 34,
  standard_deviation: 8)
# . . .
Workout.create(title: '2011 CrossFit Games Event 3',
  description: 
  %{For time:
15 foot Rope climb, 5 ascents
145 pound Clean and jerk, 5 reps
15 foot Rope climb, 4 ascents
165 pound Clean and jerk, 4 reps
15 foot Rope climb, 3 ascents
185 pound Clean and jerk, 3 reps
15 foot Rope climb, 2 ascents
205 pound Clean and jerk, 2 reps
15 foot Rope climb, 1 ascent
225 pound Clean and jerk, 1 rep

Post total time.},
  source: 'http://beyondthewhiteboard.com/gyms/2-main-site/2012/jun/11',
  :equipment => Equipment.where(:name => ["Barbell & weights"]),
  sample_size: 202,
  mean: 16,
  median: 14,
  standard_deviation: 6)
# . . .
