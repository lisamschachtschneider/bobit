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
    # @song = Song.new(params[:song])
    @song = Song.new(song_params)

    if @song.save
      flash[:notice] = "Your song was successfully uploaded!"
      redirect_to root_path
    else
      flash[:alert] = "Your song was not uploaded!"
      redirect_to "songs#pages"
    end
  end

  private

  def song_params
    params.require(:song).permit(:name, :title)
  end
end
