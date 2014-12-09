class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
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
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to playlists_path
  end

  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
    @songs = Song.all
  end

private
  def playlist_params
    params.require(:playlist).permit(:title, songs_attributes: [
      {id: [] }, {title: "awesome song name"}, {file: " "}]
)
  end
end
