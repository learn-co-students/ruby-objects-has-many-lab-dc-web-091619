require "pry"
class Song 
  attr_accessor :name, :artist

  ####====== CLASS VARS and METHODS ======

  @@all = []

  def self.all
    @@all
  end
  
  ####====== INSTNANCE VARS and METHODS ======
  def initialize(name)
    @name = name
    save
  end

  def save
    Song.all << self
  end

  def artist_name 
    Song.all.find do |song|
      song == self
    end

    if self.artist 
      self.artist.name
    else
      nil
    end
  end

end