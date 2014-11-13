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
  end

private
  def playlist_params
    params.require(:playlist).permit(:title, :song_attributes => [:title, :file])
  end
end
