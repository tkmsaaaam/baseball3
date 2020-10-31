# frozen_string_literal: true

class Actness < ApplicationRecord
  belongs_to :situation

  enumerize :ball_type, predicates: true, scope: true, in: {
    fast_ball: 10,
    curve: 20,
    fork: 30
  }

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

  validates :ball_type, presence: true
  validates :ball_strike, presence: true
  validates :situation_id, presence: true
end
