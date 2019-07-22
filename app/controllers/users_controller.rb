class UsersController < ApplicationController
  before_action :set_user, only: [:show, :accounts]

  def show
    render json: @user, status: :ok, root: 'attributes'
  end

  def accounts
    render json: @user.accounts, status: :ok, root: 'attributes'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
