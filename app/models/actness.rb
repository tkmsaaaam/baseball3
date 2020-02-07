class Actness < ApplicationRecord
  belongs_to :Situation
  validates :ball_type, presence: true,length: {maximum: 2}
  validates :ball_strike, presence: true,length: {minimum: 2,maximum: 2}
end
