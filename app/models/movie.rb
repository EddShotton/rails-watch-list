class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists

  validates :title, presence: true
  validates :title, :overview, uniqueness: true

  validates :overview, presence: true
end
