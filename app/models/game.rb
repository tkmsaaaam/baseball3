# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :user
  has_many :situation

  validates :date, presence: true
  validates :user_id, presence: true
end
