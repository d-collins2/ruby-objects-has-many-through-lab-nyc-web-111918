class Song
  attr_reader :name,  :genre
  attr_accessor :artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  @@all = Array.new

  def self.all
    @@all
  end
end
