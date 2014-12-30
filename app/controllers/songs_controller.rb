class SongsController < ApplicationController

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to songs_path
    else
      render 'new'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
# TIP look at later to see why this doesn't work
#    @song.audioable = Song.all
  end

  def new
    @song = Song.new
    @artist_options = Artist.all.map{ |a| [ a.name, a.id ] }
    @band_options = Band.all.map{ |b| [ b.name, b.id ] }   
  end

  def show
    @song = Song.find(params[:id])
    @playlists = Playlist.all
    @artist_options = Artist.all.map{ |a| [ a.name, a.id ] }
    @band_options = Band.all.map{ |b| [ b.name, b.id ] }  
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :file, artists_attributes: [:id, :name], bands_attributes: [:id, :name], playlists_attributes: [:id, :title])
  end
end
