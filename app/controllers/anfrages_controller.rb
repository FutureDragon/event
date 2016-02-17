class AnfragesController < InheritedResources::Base


  def new
    if current_user.typ == 0
      #Musiker schickt Anfrage
      @event = if params[:id].present?
         Event.find(params[:id])
               end
    else
      # Veranstalter schickt Anfrage
      @event = if params[:id].present?
                 Music.find(params[:id])
               end
      end

    @anfrage = Anfrage.new
  end

  def show
    @anfrage = Anfrage.find(params[:id])
    @sender = User.where id: @anfrage.absender_id

    if @sender[0].typ == 0
      # Event laden
      @event = Event.where id:@anfrage.event_id
    else
      # Musik laden
      @event = Music.where id:@anfrage.event_id
    end

    if @anfrage.empfaenger_id = current_user.id
      # Nachricht auf gelesen Setzen
      @anfrage.update(:gelesen => 1)
    end

    def antwort



      @anfrage = Anfrage.new

      @anfrageAlt = Anfrage.where id: params[:id]

    end

  end

  private

    def anfrage_params
      params.require(:anfrage).permit(:empfaenger_id, :absender_id, :titel, :text, :event_id)
    end



end

