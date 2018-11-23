class Artist
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = Array.new

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
     Song.all.select{|song| song.artist == self}
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
end
