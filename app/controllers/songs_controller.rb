class SongsController < ApplicationController

  before_action :authorize
  
  def index
    @songs = Song.search(params[:search])
  end

  def new
    @song = Song.new
  end

  # def destroy
  #   @song.destroy
  #   flash[:notice] = "Song deleted."
  #   redirect_to :back
  # end

  private
  def song_params
    params.require(:song).permit(:title, :duration, :artist_id, :genre_id)
  end
end
