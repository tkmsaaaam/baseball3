# frozen_string_literal: true

class Running < ApplicationRecord
  belongs_to :situation

  enumerize :place, predicates: true, scope: true, in: {
    home: 0,
    first: 1,
    second: 2,
    third: 3
  }

  enumerize :base_id, predicates: true, scope: true, in: {
    home: 0,
    first: 1,
    second: 2,
    third: 3
  }

  validates :place, presence: true
  validates :base_id, presence: true
  validates :go_counts, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
  validates :situation_id, presence: true
end
