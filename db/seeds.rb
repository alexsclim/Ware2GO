# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

location = Location.create(name: 'MacLeod Building', latitude: 49.26205299999999, longitude: -123.24918869999999, description: 'Where the smart people are at')

location = Location.create(name: 'Sauder School of Business', latitude: 49.2648239, longitude: -123.2537939, description: 'Where the snakes are at')

location = Location.create(name: 'ICICS', latitude: 49.2611776, longitude: -123.24880439999998, description: 'Cool guys are here')
