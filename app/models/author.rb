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

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    Magazine.all.select {|article| article.author == self}.uniq
  end

  def add_article(magazine, title)
    Article.new(magazine, title, self)
  end

  def topic_areas
    self.magazines.map {|magazine| magazine.catagory}.uniq
  end

end
