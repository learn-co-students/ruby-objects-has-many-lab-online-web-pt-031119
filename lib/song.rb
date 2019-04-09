class Song
  attr_accessor :artist, :title, :name
  @@all = []

  def initialize(song)
    @@all << song

  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) if !artist.songs.include?(self)

  end

  def name
    @name
  end

  def self.all
    @@all
  end
  
end