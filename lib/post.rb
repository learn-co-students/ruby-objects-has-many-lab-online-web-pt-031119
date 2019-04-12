require 'pry'

class Post
  attr_accessor :title, :author, :name

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    # binding.pry

    # @name = author.name if @name != nil
    # binding.pry
    author.name if author
    # binding.pry
    # # nil if !author.name
    # name = Author.new
    # post.author = name
    #
    # post.author = self
    # binding.pry
    # name = post.author
    # binding.pry
    # self.author
  end

  def self.all
    @@all
  end

end
