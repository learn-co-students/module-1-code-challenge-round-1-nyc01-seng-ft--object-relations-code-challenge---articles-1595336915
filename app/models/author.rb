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
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    mags = articles.map do |article|
      article.magazine
    end
    mags.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    mags = articles.map do |article|
      article.magazine.category
    end
    mags.uniq
  end

end
