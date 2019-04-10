class Author
  @@count = 0
  @@all = []
  attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = []
    @@all << name
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
    @@count += 1
  end

  def self.post_count
    @@count
  end
end
