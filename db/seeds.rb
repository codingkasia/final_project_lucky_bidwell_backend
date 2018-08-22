# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "p1", password: "pass", email: 'foo@example.com')
User.create(name: "p2", password: "pass", email: 'bob@example.com')
User.create(name: "Sue", password: "pass", email: 'foo@example.com')
User.create(name: "Bob", password: "pass", email: 'bob@example.com')
Point.create(user_id: 1, points: 0)
Point.create(user_id: 2, points: 0)
Guess.create(value: 0, room_id: 1)
Score.create(sumPoints: 0, room_id: 1)
Room.create(name: "Lucky Bidwell", activeUser: nil)
Number.create(number: 1, room_id: 1)


