# frozen_string_literal: true

module Admin
  class UserPolicy < BasePolicy
    def index?
      user_type_admin?
    end

    def show?
      user_type_admin?
    end

    def edit?
      user_type_admin?
    end

    def update?
      user_type_admin?
    end

    def destroy?
      user_type_admin?
    end
  end
end
