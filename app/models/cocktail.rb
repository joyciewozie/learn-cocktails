class Cocktail < ApplicationRecord
  has_many :attempts, dependent: :destroy
  has_one_attached :photo
  STATUSES = ["Not Tried", "Tried & Liked", "Tried & It's Okay", "Tried & Didn't Like"]
  METHODS = ['Shake', 'Stir']
  validates :name, presence: true
  validates :status, inclusion: { in: STATUSES }, presence: true
  validates :method, inclusion: { in: METHODS }, presence: true
  validates :ingredients, presence: true
  validates :how_to_make, presence: true
end
