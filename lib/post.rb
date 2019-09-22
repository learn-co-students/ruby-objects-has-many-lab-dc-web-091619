class Post
  attr_accessor :title, :author

  ###====== CLASS VARS and METHODS ======

  @@all = []

  def self.all
    @@all
  end
  
  ###====== INSTANCE VARS and METHODS ======
  def initialize(title)
    @title = title
    save
  end

  def save
    Post.all << self
  end

  def author_name 
    Post.all.find do |post|
      post == self
    end

    if self.author
      self.author.name
    else
      nil
    end
  end

end