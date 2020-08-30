class Author
  attr_accessor :name

  @@post_count = 1

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

def has_many_post(post_title)
  post = Post.new(post_title)
  @post = post
  post.author = self
end

  def self.post_count
    @@post_count
  end

  def add_post(post_title)
    @posts << post_title
    post_title.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
end