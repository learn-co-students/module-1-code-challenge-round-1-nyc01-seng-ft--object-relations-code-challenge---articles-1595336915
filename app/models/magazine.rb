require 'pry'
class Magazine
  attr_accessor :name, :category
  #left these at accessor because lab initialized with them
  @@all = []

  def initialize(name, category)
    @name = name #magazine name
    @category = category #magazine.cat
    @@all << self
  end

  def self.all #.all
    @@all
  end
   
  def articles #added this to make contributors work
    Article.all.select {|article|article.magazine == self}
  end

  def contributors #authors 
    self.articles.map(&:author)
  end 

  def self.find_by_name(name)
    self.all.find{|mag|mag.name == name}
  end
  #was still ruynning tests for this
  def article_titles
    all.select {|art|articles.title == self}
    #Returns an array strings
    #of the titles of all articles written for that magazine
    #select returns an array of all elements true
  end

  def contributing_authors
  end
   #self.all.select {|mag|mag."" == #answer to articletitles > 2 }
  #end
  #ran out of time
end
