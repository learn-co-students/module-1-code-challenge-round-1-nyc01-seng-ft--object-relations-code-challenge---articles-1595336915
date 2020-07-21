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
    Article.all.select do |i|
      i.author == self
    end
  end

  def magazines
    articles.map do |i|
      i.magazine
    end.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    articles.map do |i|
      i.magazine.category
    end.uniq
  end
end
