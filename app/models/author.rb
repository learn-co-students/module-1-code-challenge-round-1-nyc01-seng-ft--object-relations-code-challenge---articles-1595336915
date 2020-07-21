class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select{|article| article.author==self}
  end
  def magazines
  Article.all.select{|article| article.author== self}
  end

  def add_article(magazine, title)
    Article.new(self,author, magazine)

  end 

  def topic_areas
    @magazines.map do |magazine| 
      magazine.author
    end 
  end 

end 
