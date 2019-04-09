class Artist
  attr_accessor :name, :songs, :song_count, :song

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song_by_name(song)
    @songs << song

  end

  def add_song(song)
    @songs << song
    song.artist = self if song.artist != self

  end

  def name
    @name

  end

  def song_count
    @songs.size
  end

  
end