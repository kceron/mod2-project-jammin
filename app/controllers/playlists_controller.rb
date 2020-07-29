class PlaylistsController < ApplicationController
    before_action :find_params, only: [:show, :edit, :update, :destroy]
    before_action :authorize

    def index
      @playlists = Playlist.search(params[:search])
    end

    def show

    end

    def new
        @playlist = Playlist.new
    end

    def create 
        @playlist = Playlist.new(playlist_params)
    
        if @playlist.save
          redirect_to @playlist
        else
          render :new
        end
    end
    
    def edit
      #byebug
    end
    
    def update
      
        @playlist.update(playlist_params)
        if @playlist.save
          redirect_to @playlist
        else
          render :edit
        end
    end
    
    def destroy
        @playlist.destroy
        flash[:notice] = "Playlist deleted."
        redirect_to playlists_path
    end

    private
    def playlist_params
      params.require(:playlist).permit(:name, :user_id, song_ids: [])
    end

    def find_params
        @playlist = Playlist.find(params[:id])
    end
end
