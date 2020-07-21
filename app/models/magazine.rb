require 'pry'
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

  def article
    Article.all.select {|article| article.magazine == self}
  end

  def contributors
    Article.all.select {|article| article.magazine == self}
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name = name}
  end

  def article_titles
    Magazine.all.each do |magazine|
      magazine.title
    end
  end

  def contributing_authors

  end


end
