require "author.rb"
class Post
    attr_reader :author
    attr_accessor :title
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end
    def author=(author)
        @author = author
    end
    def author_name
        # binding.pry
        if self.author
            self.author.name
        else
        end
    end
    def self.all
        @@all
    end
end