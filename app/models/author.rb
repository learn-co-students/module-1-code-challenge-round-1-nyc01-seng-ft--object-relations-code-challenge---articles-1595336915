class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all 
    @@all
  end

  def save 
    @@all << self 
  end 

  def articles
    Article.all.select {|i| i.author == self}
  end

  def magazines
    self.articles.map {|i| i.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)  
  end

  def topic_areas
    self.magazines.map {|i| i.category}.uniq
  end

end
