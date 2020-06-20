class Post
  attr_accessor :title, :author

  @@posts = []

  def initialize(title)
    @title = title
    @@posts << self
  end

  def self.posts
    @@posts
  end

  def author_name
    author.name if author
  end
end