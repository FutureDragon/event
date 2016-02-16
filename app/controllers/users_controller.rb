class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @anfrage = Anfrage.where(empfaenger_id: current_user.id)
  end
end
