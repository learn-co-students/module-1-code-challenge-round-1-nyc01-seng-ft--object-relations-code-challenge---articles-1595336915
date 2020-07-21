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

  def contributors
    Article.all.select {|author| 
    author.magazine == self}.map {|magazine| 
      magazine.author}   
  end

  def self.find_by_name(name)
    self.all.find {|magazine| 
    magazine.name == name
  }
  end

  def article_titles
    Article.all.select {|author|
  author.magazine == self}.map {|magazine|
  magazine.title}
  end

  def contributing_authors
    if contributors.count > 2
      contributors
    else
      return "You do not have enough contributors."
    end
  end

end
