class MovieSerializer < ActiveModel::Serializer
  binding.pry
  attributes :id, :title, :description, :year, :length, :image_url, :rating
end
