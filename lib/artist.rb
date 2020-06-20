require "pry"

class Artist
  attr_accessor :name
 @@all = []
 
  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song (song)
    @@all << song
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def add_song_by_name (title)
    new_song = Song.new(title)
    @songs << new_song
    new_song.artist = self
  end
  
  def self.song_count
   Song.all.count
  end


end