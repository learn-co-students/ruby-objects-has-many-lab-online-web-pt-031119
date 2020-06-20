require "pry"

class Artist

attr_accessor :name
@@all = []  #creating an array to store songs created
#@@count = 0 #count tracks the number of songs created
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    #@@count += 1 #count the songs created
    @songs << song
    @@all << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end

  def self.song_count
    @@all.size   #if using counter, @@count to call count.
  end

end
