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

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
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

    if @song.save
      redirect_to songs_path
    else
      render 'new'
    end
  end

  private
  def song_params
    params.require(:song).permit(:artist, :title, :file)
  end
end

