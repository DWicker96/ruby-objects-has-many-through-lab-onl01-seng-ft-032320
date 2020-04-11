class Song
    attr_reader :name, :genre, :artist
  @@all = []

    # def initialize(name = nil , artist = nil , genre = nil)
    def initialize(name, artist, genre)
      @name = name
      @genre = genre
      @artist = artist
      # genre.add_song(self)
      @@all << self
    end
    
    def self.all
        @@all
    end

end