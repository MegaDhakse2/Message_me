# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(username: "tahriq", password: "Vin@1234")
User.create(username: "ster", password: "Vin@1234")
User.create(username: "Naveen", password: "Vin@1234")
User.create(username: "Gollam", password: "Vin@1234")

Message.create(body: "HI everyone", user_id: 7)
Message.create(body: "HI ", user_id: 8)
Message.create(body: "HI hi", user_id: 9)
Message.create(body: "whatsapp bro", user_id: 6)
