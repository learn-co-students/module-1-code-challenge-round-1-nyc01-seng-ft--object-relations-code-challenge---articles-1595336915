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

  def articles #returns article that author has written
    Article.all.select {|a| a.author == self}
  end

  def magazines #returns magazine for given article
    articles.map { |a| a.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map { |a| a.category }.uniq
  end


end
