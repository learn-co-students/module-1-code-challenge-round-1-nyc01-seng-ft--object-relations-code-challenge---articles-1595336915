class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.filter { |piece| piece.author == self}
  end

  def magazines
    articles.map { |piece| piece.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map { |piece| piece.category }.uniq
  end
end
