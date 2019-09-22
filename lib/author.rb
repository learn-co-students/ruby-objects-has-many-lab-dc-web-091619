require 'pry'
class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    
      def add_post(post)
       post = Post.new(post)
    end
      def add_post_by_title(title)
       title = Post.new(title)
        title.author = self
    end
     def posts
        Post.all.select {|post| post.author = self}
     end
    def self.post_count
        Post.all.count - 1
        
    end

   
    
end