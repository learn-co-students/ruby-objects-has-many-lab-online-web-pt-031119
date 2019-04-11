# class Song
# attr_accessor :name, :artist
 
 
#   @@songs = []
#   def initialize(song)
#     @name = song
#     @@songs << self
#   end
  
#   def self.all
#     @@songs
#   end
  
# end



class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end
end

