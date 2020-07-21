class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    Articles.all.select do |article|
      article.author == self
  end
  
  def magazines
    self.articles.map do |article|
      article.magazine.uniq
  end

end
