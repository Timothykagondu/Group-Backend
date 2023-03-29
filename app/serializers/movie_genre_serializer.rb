class MovieGenreSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :genre_id
end
