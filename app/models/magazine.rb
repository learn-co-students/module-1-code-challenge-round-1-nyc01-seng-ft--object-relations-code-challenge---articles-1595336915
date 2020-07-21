class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    save
  end

  def self.all
    @@all
  end

  def contributors
    #Decided to do unique because authors are one person. They may have the same name, but they should be unique instances at least.
    articles.map{|article| article.author}.uniq
  end

  def self.find_by_name(the_name)
    self.all.find{|magazine| magazine.name == the_name}
  end

  def article_titles
    articles.map{|article| article.title}
  end

  def contributing_authors
    #could not get this method :(
    contributors.select do |author|
      author.articles.count > 2 && self.articles.include?(author.articles)
    end
  end

  def articles
    Article.all.select{|article| article.magazine == self}
  end


  private

  def save
    @@all << self
  end



end
