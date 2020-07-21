# Please copy/paste all three classes into this file to submit your solution!
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

require 'pry'

class Article
    
    attr_reader :author, :magazine, :title #nochanging
    @@all = [] 
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title 
        @@all << self
      end
     
      def self.all #.all
        @@all
      end  
end

require 'pry'
class Author
  attr_accessor :name
 #left these at accessor because lab initialized with them
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article|article.author == self}
  end

  def magazines
    self.articles.map(&:magazine).uniq
  end

  def add_article(magazine,title)
    Article.new(self, magazine, title)
  end

  def topic_areas
  end
  #Returns a unique array of strings with the
  #categories of the magazines the author has 
  #contributed to
  #.uniq

end

require_relative '../config/environment.rb'
#require_relative './article.rb'
#require_relative './magazine.rb'
#require_relative './author.rb'
def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("potato")
a2 = Author.new("tomato")
a3 = Author.new("cutecumber")
a4 = Author.new("carrothead")

m1 = Magazine.new("sportsball illustrated","sports")
m2 = Magazine.new("super models", "retail")
m3 = Magazine.new("gamer pro", "gaming")
m4 = Magazine.new("glove enthusiasts", "retail")

t1 = "unenthused title"
t2 = "angry title"
t3 = "sad"
t4 = "exciting title"
t5 = "cool title"
t9 = "out of order title"
t6 = "lukewarm title"
t7 = "hot title"
t8 = "title to your car"

article1 = Article.new(a1,m4,t1)
article2 = Article.new(a2,m4,t2)
article3 = Article.new(a3,m4,t3)
article4 = Article.new(a4,m3,t4)
article5 = Article.new(a1,m3,t5)
article6 = Article.new(a2,m2,t6)
article7 = Article.new(a3,m2,t7)
article8 = Article.new(a4,m1,t8)

a3.articles
a3.magazines
m3.contributors
m3.articles



### DO NOT REMOVE THIS
binding.pry

0
