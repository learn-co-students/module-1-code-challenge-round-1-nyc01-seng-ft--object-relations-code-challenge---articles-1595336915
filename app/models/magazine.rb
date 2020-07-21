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
    Article.all.filter { |piece| piece.magazine == self}
  end

  def contributors
    articles.map { |piece| piece.author }
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end

  def article_titles
    articles.map { |piece| piece.title }
  end

  def contributing_authors
    result = []
    # if author occurs twice push to array
    contributors.each do |author|
      result.push(author)
      end
    result.detect{ |name| result.count(name) >= 2 }
  end

end
