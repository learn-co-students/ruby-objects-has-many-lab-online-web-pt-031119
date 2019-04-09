require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count
    #binding.pry
    eval @@artists.map {|artist| artist.songs.length}.join('+')
  end

end
