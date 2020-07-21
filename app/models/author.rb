require "pry"

class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select do |article|
      if article.author == self
        article
      end
    end
  end

  def magazines
    articles.collect do |article|
      article.magazine
    end.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.collect do |zine|
      zine.category
    end.uniq
  end

end
