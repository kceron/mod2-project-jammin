class SongPlaylistsController < ApplicationController
  before_action :authorize

  def new

  end

  def create
    # byebsug
    @song_playlist = SongPlaylist.create(song_id: params[:song_id], playlist_id: params[:playlist_id])

    redirect_to @song_playlist.playlist
  end

  private

  def song_playlist_params
    params.require(:song_playlist).permit(:playlist_id, :song_id)
  end
end
