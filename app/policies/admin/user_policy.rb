# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def index?
    false unless user.admin?
  end

  def show?
    false unless user.admin?
  end
end
