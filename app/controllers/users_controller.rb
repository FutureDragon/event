class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @anfrageBekommen = Anfrage.where(empfaenger_id: current_user.id)
    @anfrageGeschrieben = Anfrage.where(absender_id: current_user.id)
  end
end
