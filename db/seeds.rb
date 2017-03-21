# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

location = Location.create(name: 'MacLeod Building', latitude: 0.00001, longitude: 0.00001, description: 'This is where the EECE students are at.', visited_num: 8)

location = Location.create(name: 'MacMillan Building', latitude: 49.2612748, longitude: -123.25097160000001, description: 'Farmers have their class here???', visited_num: 5)

location = Location.create(name: 'Sauder School of Business', latitude: 49.2648239, longitude: -123.2537939, description: 'Where the snakes are at.', visited_num: 2)

location = Location.create(name: 'ICICS', latitude: 0.0001, longitude: 0.0001, description: 'Counter Strike majors come here', visited_num: 4)

location = Location.create(name: 'Pharmacy Building', latitude: 0.000, longitude: 0.00000, description: 'Legal drug dealers :)', visited_num: 15)

review = Review.create(user_id: 1, user_name: 'Ronald Drump', location_id: 1, body: 'Make MacLeod Great Again! This place is not as great as it used to be.')

review = Review.create(user_id: 1, user_name: 'Sea Pen', location_id: 1, body: 'bam bam bng bang bang')

review = Review.create(user_id: 1, user_name: 'rot tmo', location_id: 1, body: 'I create video cards')

review = Review.create(user_id: 1, user_name: 'luap seivad', location_id: 1, body: 'Embedded Systems good')

review = Review.create(user_id: 1, user_name: 'Cheuk sze jesse choi', location_id: 1, body: 'OP dude')

review = Review.create(user_id: 1, user_name: 'yong chie graphics', location_id: 1, body: 'i am GUI')

review = Review.create(user_id: 1, user_name: 'Bob', location_id: 2, body: 'I build stuff.')

review = Review.create(user_id: 1, user_name: 'Fred', location_id: 2, body: 'Hello World!')

review = Review.create(user_id: 1, user_name: 'Lina', location_id: 2, body: 'Laguna Blade!')

review = Review.create(user_id: 1, user_name: 'Sven', location_id: 2, body: 'Rogue Knight!')

review = Review.create(user_id: 1, user_name: 'Rhasta', location_id: 2, body: 'I feel you man!')

review = Review.create(user_id: 1, user_name: 'Bilbo', location_id: 2, body: 'The road goes ever on and on!')

review = Review.create(user_id: 1, user_name: 'Frodo Baggins', location_id: 2, body: 'The ringbearer')

review = Review.create(user_id: 1, user_name: 'Thomas', location_id: 3, body: 'The tank engine')

review = Review.create(user_id: 1, user_name: 'Lockon Stratos', location_id: 3, body: 'Sniping Targets')

review = Review.create(user_id: 1, user_name: 'Setsuna F. Seiei', location_id: 3, body: 'Exia')

review = Review.create(user_id: 1, user_name: 'L', location_id: 3, body: 'This place is intriguing')

review = Review.create(user_id: 1, user_name: 'Yagami Light', location_id: 3, body: 'ohayo')

review = Review.create(user_id: 1, user_name: 'Ryuk', location_id: 3, body: 'The apples here are juicy')

review = Review.create(user_id: 2, user_name: 'Ho Bu', location_id: 4, body: 'This place is a new building. It has that new building smell.')

review = Review.create(user_id: 3, user_name: 'Arex Rim', location_id: 4, body: 'Lots of people here, impossible to find a spot.')

review = Review.create(user_id: 4, user_name: 'jerry rs zhang', location_id: 4, body: 'I like to hang out with the snakes!')

review = Review.create(user_id: 5, user_name: 'Enumerated Jac', location_id: 4, body: 'Trying to find dem doctors')

review = Review.create(user_id: 5, user_name: 'JCWEI', location_id: 4, body: 'hokay............juicykuhxy')

review = Review.create(user_id: 5, user_name: 'Q Girl', location_id: 4, body: 'blah blah blah blah u wot m8')

review = Review.create(user_id: 6, user_name: 'Jacqueline 1', location_id: 5, body: 'I give Jerry access here')

review = Review.create(user_id: 6, user_name: 'Jacqueline 2', location_id: 5, body: 'Unknown Jacqueline')

user = User.create();
user = User.create();
user = User.create();

visits = Visit.create(user_id: 1, location_id: 1)
visits = Visit.create(user_id: 1, location_id: 5)
visits = Visit.create(user_id: 2, location_id: 1)

for i in 0..10
  assistance = Assistance.create(user_id: i, latitude: 999.999, longitude: 999.999)
end
