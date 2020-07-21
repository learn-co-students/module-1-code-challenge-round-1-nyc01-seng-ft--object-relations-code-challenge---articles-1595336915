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
  
  def articles #Returns an array of Article instances the author has written
    Article.all.select {
      |articles| articles.author == self
    }
  end
  def magazines #Returns a **unique** array of Magazine instances for which the author has contributed to
    self.articles.map {
      |articles| articles.magazine
  }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas #Array of strings of categories contributed to - finish magazines
    topicArray = []
    arr = self.magazines.select {
      |magazine| magazine.category
    }
    arr.each { 
      |catObj| topicArray << catObj.category
    }
    topicArray.uniq
  end
end
