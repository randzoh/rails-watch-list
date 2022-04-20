class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie,
    message: "Movie/list couple should be unique" }

  belongs_to :movie
  belongs_to :list
end
