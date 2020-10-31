# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :game

  enumerize :user_type, predicates: true, scope: true, in: {
    normal: 1,
    admin: 10
  }

  validates :email, presence: true
  validates :user_type, presence: true
end
