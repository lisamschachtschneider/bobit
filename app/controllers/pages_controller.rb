class PagesController < ApplicationController
  def index
    @songs = Song.all
  end

  def about
  end
  
  def legal
  end
end
