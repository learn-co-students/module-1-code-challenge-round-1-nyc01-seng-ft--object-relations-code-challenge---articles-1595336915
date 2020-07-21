class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles #Returns array of articles written by author instance
    Article.all.select {|pieces| pieces.author == self}
  end

  def add_article(magazine,title)
    Article.new(self, magazine, title)
  end




end
