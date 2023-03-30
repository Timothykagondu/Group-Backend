class MovieGenreSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :genre_id

  belongs_to :movie
  belongs_to :genre
end
