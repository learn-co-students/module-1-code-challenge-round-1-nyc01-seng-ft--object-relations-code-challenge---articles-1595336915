require 'pry'
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

  def article
    Article.all.select {|article| article.author == self}
  end

  def articles
    Article.all.select {|article| article.author}
  end

  def magazines
    Article.all.select {|article|  article.magazine}
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.select {|magazine| magazine.category}
  end

end
