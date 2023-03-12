class Attempt < ApplicationRecord
  belongs_to :cocktail

  validates :title, presence: true
  validates :comment, presence: true
  validates :date_of_attempt, presence: true
end
