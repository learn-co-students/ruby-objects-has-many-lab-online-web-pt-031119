require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self

  end

  def songs
    Song.all.select {|song| song.artist==self}

  end

  def add_song(song)
    song.artist = self

  end

  def name
    @name

  end

  def self.song_count
    array = []
    @@all.each do |songs|
      if array.include?(songs.name) == false
        array << songs.name
      end
    end
    array.size
    #binding.pry
  end

  
end