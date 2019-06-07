require 'pry'
class Song 
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@artists << artist
    @@genres << genre
    @@count = @@count + 1
  end
  
  def name
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genre
  end
  
  #def self.artist_count
    artist.count
  end

  

end




  # let!(:lucifer) { Song.new("Lucifer", "Jay-Z", "rap" ) }
  # let!(:ninety_nine_problems) { Song.new("99 Problems", "Jay-Z", "rap") }
  # let!(:hit_me) { Song.new("hit me baby one more time", "Brittany Spears", "pop") }