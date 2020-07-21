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
  
  def name
    self.name
  end

  def category
    self.category
  end

  def get_contributors
    Article.all.select{|article|article.magazine == self}
  end

  def contributors
    self.get_contributors.select {|contributors| contributors.author}.uniq
  end

end
