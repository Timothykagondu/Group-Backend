# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding Movies, grab your popcorn...🍿🍿"

#users
User.create!(name: "sundus",  email: "sundus@gmail.com",  password: "sundus")
User.create!(name: "timothy", email: "timothy@example.com", password: "timothy")

#reviews
Review.create!(user_id: 1, movie_id: 1, comment: 'This is a great movie!')
Review.create!(user_id: 2, movie_id: 2, comment: 'One of the best movies of all time.')

#movies
Movie.create(title: "Captain America: The Winter Soldier", description: "Steve Rogers teams up with Natasha Romanoff, aka Black Widow, to stop a new threat from old history: an assassin known as the Winter Soldier.", year: 2014, length: 136, image_url: "https://www.imdb.com/title/tt1843866/mediaviewer/rm297853184/", rating: true)
Movie.create(title: "Black Panther", description: "The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T'Challa.", year: 2018, length: 134, image_url: "https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg", rating: true)
Movie.create(title: "Trevor Son of Patriciah", description: "Noah's South African roots and upbringing merge into his recent American experience making for funny and human juxtapositions and observations", year: 2018, length: 73, image_url: "https://occ-0-32-33.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABV1_lZfnEqo35g9PbaB1RGwHicFkXjN7Nkuf0Gre4xBTW4AQQuetwJrHARlXsqvIeQsdPYYijxFz86w9LFJGRNYGfmitIXmpoPFcwcWSLF6DGRmyAh4K3GursI1JWQJYATR9kg.jpg?r=131", rating: true)
Movie.create(title: "What happened to monday", description: "In a world where families are limited to one child due to overpopulation, a set of identical septuplets must avoid being put to a long sleep by the government and dangerous infighting while investigating the disappearance of one of their own", year: 2017, length: 123, image_url: "https://www.hollywoodinsider.com/wp-content/uploads/2021/02/Hollywood-Insider-What-Happened-to-Monday-Review-Netflix-Noomi-Rapace.png", rating: true)
Movie.create(title: "After", description: "A young woman falls for a guy with a dark secret and the two embark on a rocky relationship. Based on the novel by Anna Todd.", year: 2019, length: 105, image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/6/62/After_2019_film.png/220px-After_2019_film.png", rating: false)
Movie.create(title: "Avengers: Infinity War", description: "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.", year: 2018, length: 149, image_url: "https://www.imdb.com/title/tt4154756/mediaviewer/rm4288054784/", rating: true)
Movie.create(title: "Slumberland", description: "A young girl discovers a secret map to the dreamworld of Slumberland, and with the help of an eccentric outlaw, she traverses dreams and flees nightmares, with the hope that she will be able to see her late father again", year: 1996, length: 82, image_url: "https://m.media-amazon.com/images/M/MV5BNDUzMzE3NDktN2JmOC00ZjJmLTg0NmMtODE0NDkzNDE5OGYwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg", rating: true)
Movie.create(title: "The Conjuring", description: "Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse", year: 2013, length: 112, image_url: "https://m.media-amazon.com/images/M/MV5BZjU5OWVlN2EtODNlYy00MjhhLWI0MDUtMTA3MmQ5MGMwYTZmXkEyXkFqcGdeQXVyNjE5MTM4MzY@._V1_.jpg", rating: true)
Movie.create(title: "The Suicide Squad", description: "A task force of convicts are sent on a mission to destroy a Nazi-era laboratory and encounter the deadly threat of the Corto Maltese government and their captive Starro the Conqueror.", year: 2021, length: 132, image_url: "https://www.imdb.com/title/tt6334354/mediaviewer/rm3532047361/", rating: true)
Movie.create(title: "The Matrix", description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.", year: 1999, length: 136, image_url: "https://www.imdb.com/title/tt0133093/mediaviewer/rm1048562176/", rating: true)
Movie.create(title: "Inception", description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.", year: 2010, length: 148, image_url: "https://www.imdb.com/title/tt1375666/mediaviewer/rm3877282560/", rating: true)
Movie.create(title: "Spider-Man: Into the Spider-Verse", description: "Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.", year: 2018, length: 117, image_url: "https://www.imdb.com/title/tt4633694/mediaviewer/rm2386927360/", rating: true)
Movie.create(title: "Pulp Fiction", description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", year: 1994, length: 154, image_url: "https://www.imdb.com/title/tt0110912/mediaviewer/rm297485568/", rating: true)
Movie.create(title: "The Silence of the Lambs", description: "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.", year: 1991, length: 118, image_url: "https://www.imdb.com/title/tt0102926/mediaviewer/rm4186125056/", rating: true)
Movie.create(title: "The Shawshank Redemption", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", year: 1994, length: 142, image_url: "https://www.imdb.com/title/tt0111161/mediaviewer/rm2233906176/", rating: true)
Movie.create(title: "The Godfather", description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", year: 1972, length: 175, image_url: "https://www.imdb.com/title/tt0068646/mediaviewer/rm2582809088/", rating: true)
Movie.create(title: "The Dark Knight", description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.", year: 2008, length: 152, image_url: "https://www.imdb.com/title/tt0468569/mediaviewer/rm4262981120/", rating: true)
Movie.create(title: "Forrest Gump", description: "The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.", year: 1994, length: 142, image_url: "https://www.imdb.com/title/tt0109830/mediaviewer/rm1912064256/", rating: true)
Movie.create(title: "The Social Network", description: "The story of the founding of Facebook and the legal battles that followed.", year: 2010, length: 120, image_url: "https://www.imdb.com/title/tt1285016/mediaviewer/rm757037568/", rating: true)
Movie.create(title: "La La Land", description: "A jazz pianist falls in love with an aspiring actress in Los Angeles.", year: 2016, length: 128, image_url: "https://www.imdb.com/title/tt3783958/mediaviewer/rm1773618689/", rating: true)
Movie.create(title: "Jurassic Park", description: "A group of people are invited to an island theme park featuring genetically modified dinosaurs created by a multimillionaire.", year: 1993, length: 127, image_url: "https://www.imdb.com/title/tt0107290/mediaviewer/rm3113696000/", rating: true)
Movie.create(title: "The Lion King", description: "A young lion prince is cast out of his pride by his cruel uncle, who claims he killed his father. Years later, he returns to reclaim his throne.", year: 1994, length: 88, image_url: "https://www.imdb.com/title/tt0110357/mediaviewer/rm1834561536/", rating: true)
Movie.create(title: "Eternal Sunshine of the Spotless Mind", description: "A couple undergoes a procedure to erase each other from their memories when their relationship turns sour, but it is only through the process of loss that they discover what they had to begin with.", year: 2004, length: 108, image_url: "https://www.imdb.com/title/tt0338013/mediaviewer/rm1311055360/", rating: true)
Movie.create(title: "Wonder Woman 1984", description: "Diana Prince faces off against a new enemy, the Cheetah, while reuniting with her long-lost love, Steve Trevor.", year: 2020, length: 151, image_url: "https://www.imdb.com/title/tt7126948/mediaviewer/rm543866368/", rating: false)


#genres
Genre.create(name: "Action", description: "Films that typically feature fast-paced, energetic action scenes involving physical stunts, chases, and fights.")
Genre.create(name: "Comedy", description: "Films that are intended to be humorous or make the audience laugh.")
Genre.create(name: "Drama", description: "Films that are serious in tone and often focus on realistic characters and emotional themes.")
Genre.create(name: "Horror", description: "Films that are designed to scare, shock, and unsettle the audience.")
Genre.create(name: "Science Fiction", description: "Films that explore speculative or imaginative concepts, such as advanced science and technology, space exploration, time travel, parallel universes, and extraterrestrial life.")
Genre.create(name: 'Drama', description: 'A genre that focuses on realistic characters and emotional themes.')
Genre.create(name: 'Thriller', description: 'A genre that creates intense feelings of suspense, excitement, and anxiety.')
Genre.create(name: 'Fantasy', description: 'A genre that typically involves supernatural or magical elements, and often takes place in imaginary worlds or alternate realities.')
Genre.create(name: "Animation", description: "Films and TV shows featuring animated characters and scenes.")

puts "Done! Enjoy 🎥"