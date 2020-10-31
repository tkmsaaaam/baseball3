# frozen_string_literal: true

class Situation < ApplicationRecord
  belongs_to :game

  MAX_ININGS = 12

  enumerize :ball_strike, predicates: true, scope: true, in: {
    no_and_no: 0,
    no_and_one: 1,
    no_and_two: 2,
    one_nothing: 3,
    one_and_one: 4,
    one_and_two: 5,
    two_nothing: 6,
    two_and_one: 7,
    two_and_two: 8,
    tree_nothing: 9,
    tree_and_one: 10,
    tree_and_two: 11
  }

  validates :bat_counts, presence: true, length: { maximum: 2 }
  validates :inings, presence: true, numericality: { less_than_or_equal_to: MAX_ININGS }
  validates :actness_results, presence: true, on: :update
  validates :where_go,
            presence: true,
            numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 4 },
            on: :update
  validates :ball_counts, presence: true, numericality: { greater_than_or_equal_to: 1 }, on: :update
  validates :ball_strike, presence: true
  validates :rbi, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }, on: :update
  validates :steal_counts,
            presence: true,
            numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3 },
            on: :update
  validates :score, presence: true
  validates :game_id, presence: true
end
