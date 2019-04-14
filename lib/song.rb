class Song
  attr_accessor :artist, :name, :genre 
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self   
  end 
  
  def artist_name 
    self.artist.name
  else
    result = nil
  end 
  
  def name
    @name 
  end 
  
  def self.all
    @@all
  end 
end 