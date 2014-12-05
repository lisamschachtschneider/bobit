class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
    @songs = Song.all
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to playlists_path
    else
      render 'new'
    end
  end

  def destroy
  end

  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

private
  def playlist_params
    params.require(:playlist).permit(:title, songs_attributes: [:id, :title, :file])
  end
end
