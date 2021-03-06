class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to bands_path
    else
      render 'new'
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    redirect_to bands_path
  end

  def edit
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
    2.times{ @band.songs.build}
  end

  def show
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update_attributes(band_params)
      redirect_to @band
    else
      render 'edit'
    end
  end
private
  def band_params
    params.require(:band).permit(:name, :description, :news, :songs_attributes => [:title, :file])
  end
end
