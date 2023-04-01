class Movie < ApplicationRecord
    has_many :movie_genres, dependent: :destroy
    has_many :genres, through: :movie_genres, dependent: :destroy
    has_many :reviews, dependent: :destroy

    validates :title, presence: true

    validates :year, numericality: {greater_than_or_equal_to: 1888,
                                    less_than_or_equal_to: Date.today.year
                                   }
    validates :image_url, presence: true
end
