# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  ADMMIN_USER_IDS = [1].freeze

  has_many :game
  enum user_type: { normal: 1, admin: 10 }
end