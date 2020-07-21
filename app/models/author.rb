require 'pry'

class Author
  attr_reader :name                     # Can not be changed

  @@all = []
  # initializes the following attributes (author, magazine, title)
  def initialize(name)
    @name = name
    @@all << self
  end
  # Able to call/access all instances of the class
  def self.all
    @@all
  end

  # Returns an array of Article instances the author has written
  def author
    Article.all.select { |details| details.author == self}
  end

  # Returns a unique array of magazine instances the author has helped write
  def magazines
  Article.all.map { |author| author.magazine}.uniq    # uniq is a method to help filter duplicates
  end

  # Creates a new article instances
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end


end
