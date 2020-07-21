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
    Article.all.select{|article| article.author ==self}
  end

  def magazines
    Article.all.map{|article| article.magazine if article.author == self}.uniq.compact
  end

  def add_article(magazine,title)
    new_article = Article.new(self, magazine, title)
  end

  def topic_areas
    Article.all.map{|article| article.magazine.category if article.author ==self}.uniq.compact
  end


end
