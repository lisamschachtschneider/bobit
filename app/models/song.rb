class Song < ActiveRecord::Base
  belongs_to :audioable, polymorphic: true
  has_and_belongs_to_many :playlists
  mount_uploader :file, SongUploader
#ex1
  def song_by_title_and_name
    " #{title} #{audioable.name}"
  end
##ex2- is this the same as 1?
  def list_songs(name, title, artist, band, playlists)
    "#{title} #{artist} or #{band} & #{playlists_songs}"
  end
#or is it better to simplify the method 
  def song_name(name)
    "#{song.name}"
  end

  def random_song
    "#{song.randominze}"
    puts random_song(“song.name”)
  end

  def random_song2
    (50...0).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def random_song3
    value = ""; 8.times{value << ((rand(2)==1?65:97) + rand(25)).chr}
  end

  def random_song4
    while Model.where(:id => self.id).exists?
  end

  def show
    puts "You're listening to #{name}"
  end

  def show2
    puts "You're listening to #{name} by #{artist.name}"
  end

  def show3_playlist
    puts "You're listening to #{name} by #{artist.name} on #{playlist.name}"
  end

  def method
    1.upto(9) { |x| print x }  ##prints "123456789"
  end

  

end
