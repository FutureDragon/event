class AnfragesController < InheritedResources::Base


  def new
    @event = if params[:id].present?
       Event.find(params[:id])
     end
    @anfrage = Anfrage.new
  end

  def show
    @anfrage = Anfrage.find(params[:id])
    @sender = User.where id: @anfrage.absender_id
    @event = Event.where
  end

  private

    def anfrage_params
      params.require(:anfrage).permit(:empfaenger_id, :absender_id, :titel, :text)
    end



end

