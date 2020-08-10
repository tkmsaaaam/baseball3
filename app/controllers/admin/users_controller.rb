# frozen_string_literal: true

module Admin
  class UsersController < ApplicationController
    before_action :set_user, only: %i[show edit update destroy]
    before_action :check_user_role

    def index
      @users = User.all
    end

    def show; end

    def edit; end

    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:id, :email)
    end

    def check_user_role
      return admin_access_denine unless user_signed_in?
      return admin_access_denine unless User::ADMMIN_USER_IDS.include?(current_user.id)
    end

    def admin_access_denine
      redirect_to home_index_url
    end
  end
end
