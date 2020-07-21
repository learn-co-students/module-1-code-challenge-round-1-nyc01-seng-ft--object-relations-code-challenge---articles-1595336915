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

  def non_uniq_contributors
    articles.map {|article| article.author}
  end

  def contributors
    non_uniq_contributors.uniq
  end

  def self.find_by_name(name)
    self.all.find {|mag| mag.name == name}
  end

  def article_titles
    articles.map {|article| article.title}
  end

  def contributing_authors
    num_of_articles = non_uniq_contributors.each_with_object(Hash.new(0)) {|contributor, counts| counts[contributor] += 1}
    num_of_articles.map {|author, num| author if num > 2}.compact
  end


end
