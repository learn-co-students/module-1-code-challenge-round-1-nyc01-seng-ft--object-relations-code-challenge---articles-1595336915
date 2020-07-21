class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles 
    Article.all.select {|articles| articles.author == self}
  end

  def magazines 
    articles.select {|mags| mags.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    Article.all.


end
