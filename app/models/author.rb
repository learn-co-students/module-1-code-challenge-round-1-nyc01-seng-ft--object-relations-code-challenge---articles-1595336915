# Has many articles
class Author
  attr_reader :name
  #changed accessor to reader since name cannot be changed after initialization
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # No .all method requested in instructionsM
  # def self.all
  #   @@all
  # end

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    self.articles.map { |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    self.magazines.map { |magazine| magazine.category }.uniq
  end
  
end
