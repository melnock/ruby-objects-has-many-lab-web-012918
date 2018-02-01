class Author
  attr_reader :name, :posts
  @@post_count = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    @posts << title
    title.author = self
    @@post_count << title
  end

  def add_post_by_title (title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count << title
  end

  def self.post_count
    @@post_count = @@post_count.length
  end
end
