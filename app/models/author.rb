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

  def name
    self.articles.select{|article| article.author == self}
  end

  def articles
    Article.all.select{|author| author.name == self}
  end

  def magazines
    Article.all.select{|article| article.author == self}
    
  end

  def add_article(magazine,title)
  end


end
