class Attempt < ApplicationRecord
  validate :attempt_date_must_be_in_the_past

  belongs_to :cocktail
  has_one_attached :photo

  validates :title, presence: true
  validates :comment, presence: true

  private

  def attempt_date_must_be_in_the_past
    if date_of_attempt > Date.today
      errors.add(:date_of_attempt, "is invalid")
    end
  end
end
