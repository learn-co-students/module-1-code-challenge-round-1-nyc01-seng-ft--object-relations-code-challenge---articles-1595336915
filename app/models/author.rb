class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select {|magazine| 
    magazine.author == self}
  end

  def magazines
    articles.map {|author|
    author.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(title, self, magazine)
  end

  def topic_areas
    magazines.map {|magazine| 
    magazine.category}.uniq
  end

end
