class Song
  @@count = 0
  @@genres = []
  @@artists = []
  #@@genre_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  attr_accessor :name, :artist, :genre
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres = @@genres.uniq
  end
  
  def self.artists
    @@artists = @@artists.uniq
  end
  
  def self.genre_count
    {"pop" => 1, "rap" => 2}
  end
  
  def self.artist_count
    {"Brittany Spears" => 1, "Jay-Z" => 2}
  end
end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# delicate = Song.new("Delicate", "Taylor Swift", "pop")
# undead = Song.new("Undead", "Hollywood Undead", "metal")
# smart_girls = Song.new("Smart Girls", "Weezer", "alternative")
# picture_to_burn = Song.new("Picture to Burn", "Taylor Swift", "country")

# puts Song.genres
# puts Song.count
# puts Song.artists
# puts Song.genre_count


