class Artist
    @@all = []
    attr_accessor :name, :song, :artist
    def initialize(name)
        @name = name
        @song = song
        @artist = artist
        @@all << self
    end
 def songs
        Song.all.select {|song| song.artist = self}
    end

  
   def  add_song_by_name(song)
       song = Song.new(song)
        song.artist = self
    end

    def add_song(song)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end
   
    
   
end