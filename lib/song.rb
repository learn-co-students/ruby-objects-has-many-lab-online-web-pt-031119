class Song 
  
  @@songs = []
  
  def initialize(name)
    @name =name
    @@songs
  end
  
  def self.songs
    @@songs
  end
  
  def artist_name
    artist.name if artist
  end
  
  
end