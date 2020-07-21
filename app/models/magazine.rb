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

  def contributors #returns array of author instances who've written for this 'zine instance
    Article.all.select {|piece| piece.magazine == self }
  end

  def self.find_by_name(name)
    all.find {|mags| mags.name == name }
  end

  ## Helper Method returns array of articles a magazine instance has written
  def our_articles
    Article.all.select {|pieces| pieces.magazine == self }
  end

  def article_titles
    titles = []
    self.our_articles.select {|piece| titles << piece.title }
    titles
  end


end
