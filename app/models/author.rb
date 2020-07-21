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

  def add_article(magazine, title)
    article.author = self 
  end

  def topic_areas
    self.author.map {|author| author.magazine}.uniq
  end

end
