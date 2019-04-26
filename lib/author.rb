class Author
attr_accessor :name, :posts
@@allposts = []

def initialize(name)
  @name = name
  @posts = []
end

# def posts
#   @posts
# end

def add_post(post)
  post.author = self
  @posts << post
  @@allposts << post
end

def add_post_by_title(posttitle)
  post = Post.new(posttitle)
  @posts << post
  @@allposts << post
  post.author = self
end

def self.post_count
  @@allposts.count
end


end
