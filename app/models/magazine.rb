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

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    articles.map do |article|
      article.author
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributing_authors
    contributors.map do |author|
      if contributors.count(author) > 2
        author
      end
    end.uniq
  end





end
