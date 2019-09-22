class Song
   @@all= []
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
        @artist = artist
        @@all = @@all << self
    end
    def self.all
        @@all
    end
 
    def self.artist
        Artist.new(self)
    end

    def artist_name
      artist.name if artist
    end


    # def artist_name(song)
    
    #    if Artist.name
    #    else
    # end
   
end