class AnswersController < InheritedResources::Base


  def new
    @anfrage = if params[:id].present?
       Anfrage.find(params[:id])
               end
    @sender = User.find(@anfrage.absender_id)

    if @sender.has_role?(:veranstalter)
      @event = Music.find(@anfrage.event_id)

    else
      @event = Event.find(@anfrage.event_id)

    end

    @answer = Answer.new
  end

  def show
    @answer = Answer.find(params[:id])
    @anfrage = Anfrage.find(@answer.anfrage_id)
    @sender = User.where id: @anfrage.absender_id


    if @sender[0].typ == 0
      # Event laden
      @event = Event.where id:@anfrage.event_id
    else
      # Musik laden
      @event = Music.where id:@anfrage.event_id
    end




    if @answer.empfaenger_id == current_user.id
      # Nachricht auf gelesen Setzen
      @answer.update_attribute(:gelesen, 1)
    end

  end

  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Die Antwort wurde erfolgreich gespeichert.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def answer_params
      params.require(:answer).permit(:titl, :text, :anfrage_id, :sender_id, :empfaenger_id)
    end


end

