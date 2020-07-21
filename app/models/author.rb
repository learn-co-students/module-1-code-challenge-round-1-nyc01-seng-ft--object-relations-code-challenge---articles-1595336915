
class Author
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    
    Author.all << self
  end
  def self.all
    @@all
  end

  def articles
    Article.all.select {|a| a.author == self}
  end
  def magazines
    articles.map {|a| a.magazine}
  end


end
