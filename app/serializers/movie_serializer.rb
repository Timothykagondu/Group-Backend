class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :year, :length, :image_url, :rating
end
