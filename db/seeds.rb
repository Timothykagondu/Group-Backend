# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Create some sample users
User.create!(name: "sundus",  email: "john.doe@example.com",  password: "123")
User.create!(name: "Timothy", email: "jane.smith@example.com",password: "456")

# create users
# User.create!(name: 'John', email: 'john@example.com', password: 'password')
# User.create!(name: 'Jane', email: 'jane@example.com', password: 'password')

# create movies
# Movie.create!(title: 'The Shawshank Redemption', director: 'Frank Darabont', year: 1994)
# Movie.create!(title: 'The Godfather', director: 'Francis Ford Coppola', year: 1972)

# create reviews
Review.create!(user_id: 1, movie_id: 1, comment: 'This is a great movie!')
Review.create!(user_id: 2, movie_id: 2, comment: 'One of the best movies of all time.')



