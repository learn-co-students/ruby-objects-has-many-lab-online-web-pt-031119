class Author
  attr_accessor :name
  attr_reader :posts
  @@authors = []

  def initialize(name)
    @name = name
    @@authors << self
    @posts = []
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    eval @@authors.map {|author| author.posts.length}.join("+")
  end

end
