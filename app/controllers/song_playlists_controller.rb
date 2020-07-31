class SongPlaylistsController < ApplicationController
  before_action :authorize

  def new

  end

  def create
    @song_playlist = SongPlaylist.create(song_id: params[:song_id], playlist_id: params[:playlist_id])

    redirect_to @song_playlist.playlist
  end

  def destroy
    @song_playlist = SongPlaylist.find_by(playlist_id: params[:playlist_id], song_id: params[:song_id])

    @song_playlist.destroy

    flash[:notice] = "Song deleted."
    redirect_to edit_playlist_path(params[:playlist_id])
  end

  private

  def song_playlist_params
    params.require(:song_playlist).permit(:playlist_id, :song_id)
  end
end
