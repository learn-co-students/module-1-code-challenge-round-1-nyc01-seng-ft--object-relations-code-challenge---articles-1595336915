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

  def contributors
    Article.all.map{|article| article.author if article.magazine == self}.compact
  end

  def self.find_by_name(name)
    self.all.find{|magazine| magazine.name == name}
  end

  def article_titles
    Article.all.map{|article| article.title if article.magazine == self}.compact
  end

  def contributing_authors
    Article.all.map{|article| article.author if self.articles_by_author >2 && article.magazine == self}.uniq.compact
  end

  # Helper method for #contributing_authors method
   def articles_by_author
    Article.all.count{|article| article.author if article.magazine == self}
   end



end
