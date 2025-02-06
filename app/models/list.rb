class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  validates :image_url, format: { with: URI.regexp(%w[http https]), allow_blank: true }
end
