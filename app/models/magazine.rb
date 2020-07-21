require "pry"

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
    Article.all.select do |article|
      if article.magazine == self
        article
      end
    end
  end

  def contributors
    articles.collect do |article|
      article.author
    end.uniq
  end

  # def matching_author_article
  #   contributors.select do |author|
  #     author.articles.select do |article| 
  #       article.magazine == self
  #     end
  #   end
  # end

  def self.find_by_name(name)
    self.all.find do |zine|
      if zine.name == name
        zine
      end
    end
  end

  def article_titles
    articles.collect do |article|
      article.title
    end
  end

  def contributing_authors
    contributors.select do |author|
      if author.articles.select { |article| article.magazine == self}.count > 2
        # binding.pry 
        author
      end
    end
  end

end
