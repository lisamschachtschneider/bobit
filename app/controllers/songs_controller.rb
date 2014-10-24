class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def list
    @songs = Song.find(:all)
  end

  def show
    @song = Song.find(params[:id])
  end


  def upload
  end

  def delete
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:song, :title)
  end
end
