require 'pry'
class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article|article.author == self}
  end

  def magazines
    self.articles.map(&:magazine).uniq
  end

  def add_article(magazine,title)
    Article.new(self, magazine, title)
  end

  def topic_areas
  end
  #Returns a unique array of strings with the
  #categories of the magazines the author has 
  #contributed to
  #.uniq

end
