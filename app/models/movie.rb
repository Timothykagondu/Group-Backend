class Movie < ApplicationRecord
    has_many :movie_genres
    has_many :genres, through: :movie_genres
    has_many :reviews

    validates :title, presence: true

    validates :year, numericality: {greater_than_or_equal_to: 1888,
                                    less_than_or_equal_to: Date.today.year
                                   }
    validates :image_url, presence: true
end
