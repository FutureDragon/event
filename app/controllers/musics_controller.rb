class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  # GET /musics
  # GET /musics.json
  def index
    @musics = Music.all.take(10)
    @genre = Genre.all.order(id: :asc)
  end

  # GET /musics/1
  # GET /musics/1.json
  def show
    @genre = Genre.find(@music.genre_id)
  end

  def showUser
    @user = User.find(params[:id])
    @musics = Music.where user_id: params[:id]
  end

  def showAll
    @musics = Music.all
    @genre = Genre.all.order(id: :asc)
  end

  def genre
    @genre = Genre.find(params[:genre_id])
    @musics = Music.where genre_id: params[:genre_id]
  end

  # GET /musics/new
  def new
    @music = Music.new
    @genre = Genre.all
  end

  # GET /musics/1/edit
  def edit
    @genre = Genre.all
  end

  # POST /musics
  # POST /musics.json
  def create
    @music = Music.new(music_params)

    respond_to do |format|
      if @music.save
        format.html { redirect_to @music, notice: 'Die Musik wurde erfolgreich hinzugefügt.' }
        format.json { render :show, status: :created, location: @music }
      else
        format.html { render :new }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musics/1
  # PATCH/PUT /musics/1.json
  def update
    respond_to do |format|
      if @music.update(music_params)
        format.html { redirect_to @music, notice: 'Die Musik wurde erfolgreich aktualisiert.' }
        format.json { render :show, status: :ok, location: @music }
      else
        format.html { render :edit }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
    respond_to do |format|
      format.html { redirect_to musics_url, notice: 'Die Musik wurde gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:name, :url, :description, :user_id, :genre_id)
    end
end
