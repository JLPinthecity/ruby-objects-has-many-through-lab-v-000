class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def genres
    songs.map do |song|
      song.genre.uniq
    end
  end







end
