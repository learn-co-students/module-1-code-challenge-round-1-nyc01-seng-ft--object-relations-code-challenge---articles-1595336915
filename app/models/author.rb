class Author
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
      article.author = self
  end 

  def topic_areas
      .uniq
  end 

end
