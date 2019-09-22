class Post
    @@all = []
    attr_accessor :title, :author
    def initialize(title)
        @title = title
        @@all << self
    end
    
    def self.all
        @@all
    end

     def self.author
        Author.new(self)
    end

    def author_name
      author.name if author
    end

end