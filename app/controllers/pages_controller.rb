class PagesController < ApplicationController
  def index
    @songs = Song.all
  end

  def bands
  end

  def songs
  end

  def about
  end
  
  def legal
  end
end
