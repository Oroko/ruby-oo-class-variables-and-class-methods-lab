# Song class
# Song class can produce individual songs
#Each song has a name, artist and genre
# Song class needs to be able to keep track of  the number of songs it creates
# Song class to be able to show us all of the artists of existing songs
# Song should be able to show us all the genres of existing songs
# We also need our Song class to keep track of the number of songs of each genre it creates
# lastly Song class should reveal to us the number of songs each artist is responsible for

class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count 
    @@count
  end
  def self.genres
    @@genres.uniq
  end
  def self.artists
    @@artists.uniq
  end
  def self.genre_count
    
    @@genres.each do |genre|
     if @@genre_count[genre]
      @@genre_count[genre] += 1
     else
      @@genre_count[genre] = 1
     end
    end
    @@genre_count
  end
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end
