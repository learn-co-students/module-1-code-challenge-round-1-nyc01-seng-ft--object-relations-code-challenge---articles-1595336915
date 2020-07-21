class Magazine
  attr_reader :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def self.all
    @@all
  end
  def articles #Returns an array of articles for this magazine
    Article.all.select {
      |articles| articles.magazine == self
    }
  end
  def contributors #Returns an array of Author instances who have written for this magazine
    self.articles.map {
      |articles| articles.author
  }.uniq
  end

  def self.find_by_name(name) #Given a string of magazine's name, this method returns the first magazine object that matches
    Magazine.all.find {
      |magazineObj| magazineObj.name == name
      #binding.pry
    }
  end
  def article_titles #Returns an array of strings of the titles of all articles written for that magazine
    titleArray = []
    arr = self.articles.select {
      |article| article.title
    }
    arr.each { 
      |magObj| titleArray << magObj.title
    }
    titleArray.uniq
  end
  def contributing_authors #Returns an array of authors who have written more than 2 articles for the magazine
    self.contributors.each {
      |authors| authors  
    }
  end

end
