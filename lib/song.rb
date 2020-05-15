class Song
  attr_accessor :name, :artist, :genre

@@all = []

  def initialize(name, artist, genre)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    
  end



end
