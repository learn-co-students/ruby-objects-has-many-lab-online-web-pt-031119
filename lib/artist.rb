class Artist
  @@count = 0
  attr_accessor :name

  def initialize(name = nil)
    @name = name
    @songs = []
  end

  def add_song(song = nil)
    @songs << song
    song.artist = self
    @@count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(name = nil)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@count += 1
  end

  def self.song_count
    @@count
  end
end
