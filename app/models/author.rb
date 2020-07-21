class Author
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    save
  end

  def articles
    Article.all.select{|e|e.author==self}
  end

  def magazines
    articles.map{|e|e.magazine}
  end

  def add_article (magazine,title)
    new_article=Article.new(self,magazine,title)
  end

  def topic_areas
    magazines.map{|e|e.category}
  end

  private
  def save
    @@all<<self
  end

end
