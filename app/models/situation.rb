class Situation < ApplicationRecord
  belongs_to :Game
  validates :bat_counts, presence: true,length: {maximum: 2}
  validates :inings, presence: true,length: {maximum: 2}
  validates :bat_counts, presence: true
end
