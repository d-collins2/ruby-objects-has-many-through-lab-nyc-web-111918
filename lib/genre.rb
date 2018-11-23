class Genre
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = Array.new

  def self.all
    @@all
  end

  def new_song(song_name, artist)
    Song.new(song_name, self, artist)
  end

  def songs
     Song.all.select{|song| song.genre == self}
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end
end
