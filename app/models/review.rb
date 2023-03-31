class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :comment, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :movie_id, presence: true, numericality: { only_integer: true }

end
