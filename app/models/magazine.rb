class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def all_articles
    Article.all.select do |i|
      i.magazine == self
    end
  end

  def contributors
    all_articles.map do |i|
      i.author
    end.uniq
  end

  def self.find_by_name(name)
    self.all.find do |i|
      i.name == name
    end
  end

  def article_titles
    all_articles.map do |i|
      i.title
    end
  end

  def 

  def contributing_authors
      all_articles.max_by do |i|
        
    end
  end
end
