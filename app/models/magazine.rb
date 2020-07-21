class Magazine
  attr_accessor :name, :category
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|a| a.magazine == self}
  end

  def contributors
    articles.map {|a| a.author}
  end

  def self.find_by_name(name)
    self.all.find_by{|mag| mag.name == name}
  end

  def article_titles
    Article.all.select{|a| a.magazine == self}
  end

  def contributing_authors
    Article.all.select do |a|
      if a.author == 3
        a.author
      else
        nil
      end
    end
  end

end
