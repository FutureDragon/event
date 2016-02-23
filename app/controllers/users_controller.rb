class UsersController < ApplicationController
  def show

      @user = User.find(params[:id])
      if current_user.id == @user.id
        @anfrageBekommen = Anfrage.where(empfaenger_id: current_user.id)
        @anfrageGeschrieben = Anfrage.where(absender_id: current_user.id)
        @antwortbekommen = Answer.where(empfaenger_id: current_user.id)
      else
        redirect_to current_user
      end
  end
end
