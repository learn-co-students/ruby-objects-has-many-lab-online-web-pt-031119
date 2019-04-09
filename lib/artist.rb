require 'pry'

class Artist

  attr_accessor :songs, :name
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    self.songs << song
  end

  def self.song_count
    #binding.pry
    eval @@artists.map {|artist| artist.songs.length}.join('+')
  end

end
