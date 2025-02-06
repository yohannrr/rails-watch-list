class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie, uniqueness: { scope: :list, message: "a déjà été ajouté à cette liste" }
  validates :comment, presence: true, length: { minimum: 6 }
end
