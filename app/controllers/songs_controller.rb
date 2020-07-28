class SongsController < ApplicationController
  def index
    @songs = Song.search(params[:search])
  end



  def song_params
    params.require(:song).permit(:title, :duration, :artist_id, :genre_id)
  end
end
