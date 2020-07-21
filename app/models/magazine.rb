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

  def articles
    Article.all.select {|article| article.magazine == self}
  end
# user has many contributers (authors), through articles
  def contributers
    self.articles.map {|article| article.author}
  end

  def self.find_by_name(magazine_name)
    @@all.select {|article| article.name == magazine_name}
  end

  def article_titles
    self.articles.map {|article| article.title}
  end

  def contributing_authors
    authors_with_articles = []
    self.contributers.each do |contributer|
      if !self.contributer.uniq.includes? (contributer)
        authors_with_articles << (contributer)
      end
      # Not sure if bang is used corrently here, before I had it this way
      # (I am unsure how to use bang operator)
      #
      # if self.contributer.uniq.includes? (contributer)
      # else
      # authors_with_articles << (contributer)
      # end
    end
    authors_with_articles.uniq
  end

end
