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



    if @anfrage.empfaenger_id == current_user.id
      # Nachricht auf gelesen Setzen
      @anfrage.update_attribute(:gelesen, 1)
    end

  end

  def antwort
    @anfrage = Anfrage.new

    @anfrageLast = Anfrage.find(params[:id])
    # Alle Anfragen die von den beiden User und zu dem passenden Event verschickt wurden nach Ids aufsteigend Sortiert
    @anfrageVerlauf = Anfrage.where("(absender_id = ? OR empfaenger_id = ?) And event_id = ? ",
                                    current_user.id, current_user.id, @anfrageLast.event_id).order(id: :asc)


    @user= User.find(@anfrageVerlauf[0].absender_id)
    # Es wird vom abensender der Ersten Nachricht ermittelt, ob es sich um ein Event oder Musik handelte
    if @user.id == 0
      @event = Event.find(@anfrageLast.event_id)
    else
      @event = Music.find(@anfrageLast.event_id)
    end

    @userAbsenderLetzteAnfrage = User.find(@anfrageLast.absender_id)

  end



  private

    def anfrage_params
      params.require(:anfrage).permit(:empfaenger_id, :absender_id, :titel, :text, :event_id)
    end



end

