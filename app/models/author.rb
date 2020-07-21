class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << aelf
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| atricle.author == self}
  end

  def magazines
    Magazine.all.select {|magazine| magazine.author == self}.uniq
  end
  

end
