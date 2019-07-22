class AccountsController < ApplicationController
  before_action :set_account, only: [:show]

  def show
    render json: @account, status: :ok, root: 'attributes'
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end
end
