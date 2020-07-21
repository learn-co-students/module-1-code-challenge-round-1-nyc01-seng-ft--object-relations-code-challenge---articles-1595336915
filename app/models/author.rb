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
    Article.all.select{|a| a.author == self}
  end

  def magazines
    articles.map{|a| a.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    Magazine.all.select{|a| a.category}.uniq
  end


end
