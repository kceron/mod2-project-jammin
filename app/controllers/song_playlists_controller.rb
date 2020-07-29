class SongPlaylistsController < ApplicationController
  before_action :authorize

  def edit

  end

  def update
    byebug


    redirect_to 
  end

  private

  def song_playlist_params
    params.require(:song_playlist).permit(:playlist_id, :song_id)
  end
end
