class Magazine
  attr_accessor :name, :category
  @@all =[]

  def initialize(name, category)
    @name = name
    @category = category
    save  
  end

  def articles
    Article.all.select{|e|e.magazine==self}
  end

  def contributors
    articles.map{|e|e.author}
  end
  
  def self.find_by_name (string)
    Magazine.all.select{|e|e.name==string}
  end

  def article_titles
    temp=Article.all.select{|e|e.magazine==self}
    temp.map{|e|e.title}
  end

  def contributing_authors
    output= articles.map{|e|e.author} 
    output= "There are no authors with more than 2 articles" if output.count < 3
    output
  end

  def self.all
    @@all
  end

  private
  def save
    @@all<<self
  end

end
