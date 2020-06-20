class Song
  attr_accessor :artist, :name, :genre 
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self   
  end 
  
  def artist_name 
  artist.name if artist
  end 
  
  def name
    @name 
  end 
  
  def self.all
    @@all
  end 
end 