class Song
  attr_accessor :title, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
 
  def artist_name
    artist.name if artist
  end
  
end