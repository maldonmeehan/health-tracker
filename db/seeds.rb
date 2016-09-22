# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do | i |
#   # generate food
#   entry = Entry.new
#   entry.day = ["2016/09/26"]
#
#   food = Food.new
#   food.item = Faker::Food.ingredient
#   food.calorie = Faker::Number.between(200, 300)
#   food.measurment = Faker::Food.measurement
#   food.save!
#
# end

users = [
  [ 'test@test.com', '123456' ],
  [ 'test1@test.com', '0987652' ]
]

users.each do |email, password|
  User.create( email: email, password: password )
end

entries = [
  [ '2016-09-22', 1], [ '2016-09-23', 1 ], [ '2016-09-24', 2 ], [ '2016-10-02', 2 ]
]

entries.each do |day, user_id|
  Entry.create( day: day, user_id: user_id )
end

activities = [
  [ '8888', '1777', '240', 1 ], [ '1234', '950', '15', 2], [ '6666', '1222', '75', 3 ], [ '15999', '2444', '333', 4 ]
]

activities.each do |step, calorie, minute, entry_id|
  Activity.create( step: step, calorie: calorie, minute: minute, entry_id: entry_id )
end
