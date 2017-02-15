# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

location = Location.create(name: 'MacLeod Building', latitude: 49.26205299999999, longitude: -123.24918869999999, description: 'This is where the EECE students are at.')

location = Location.create(name: 'MacMillan Building', latitude: 49.2612748, longitude: -123.25097160000001, description: 'Farmers have their class here???')

location = Location.create(name: 'Sauder School of Business', latitude: 49.2648239, longitude: -123.2537939, description: 'Where the snakes are at.')

location = Location.create(name: 'ICICS', latitude: 49.2611776, longitude: -123.24880439999998, description: 'Counter Strike majors come here')

location = Location.create(name: 'Life Sciences Building', latitude: 49.2624183, longitude: -123.2450667, description: 'Meet the doctors')

location = Location.create(name: 'Forestry Building', latitude: 49.2605024, longitude: -123.24762069999997, description: 'This building smells nice')

location = Location.create(name: 'Engineering Student Ctr', latitude: 49.2621784, longitude: -123.2492747, description: 'CHEEZE')

location = Location.create(name: 'Totem Park', latitude: 49.2587602, longitude: -123.25233220000001, description: 'Fun Stufffffffs')

review = Review.create(user_id: 1, user_name: 'Ronald Drump', location_id: 1, body: 'Make MacLeod Great Again! This place is not as great as it used to be.')

review = Review.create(user_id: 1, user_name: 'Sea Pen', location_id: 1, body: 'bam bam bng bang bang')

review = Review.create(user_id: 1, user_name: 'Sea Pen1', location_id: 1, body: 'bam bam bam bang bang bang')

review = Review.create(user_id: 1, user_name: 'Sea Pen2', location_id: 1, body: 'bam bam bam bam bang bg')

review = Review.create(user_id: 1, user_name: 'Bob', location_id: 2, body: 'I build stuff.')

review = Review.create(user_id: 1, user_name: 'Frodo Baggins', location_id: 2, body: 'The ringbearer')

review = Review.create(user_id: 1, user_name: 'Thomas', location_id: 3, body: 'The tank engine')

review = Review.create(user_id: 2, user_name: 'Ho Bu', location_id: 7, body: 'This place is a new building. It has that new building smell.')

review = Review.create(user_id: 3, user_name: 'Arex Rim', location_id: 4, body: 'Lots of people here, impossible to find a spot.')

review = Review.create(user_id: 4, user_name: 'jerry rs zhang', location_id: 3, body: 'I like to hang out with the snakes!')

review = Review.create(user_id: 5, user_name: 'Enumerated Jac', location_id: 5, body: 'Trying to find dem doctors')

review = Review.create(user_id: 5, user_name: 'JCWEI', location_id: 8, body: 'hokay............juicykuhxy')

review = Review.create(user_id: 5, user_name: 'Q Girl', location_id: 8, body: 'blah blah blah blah u wot m8')
