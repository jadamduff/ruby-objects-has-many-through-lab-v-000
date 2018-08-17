class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def new_song(name, genre)

  end

  def songs
    @songs
  end

end
