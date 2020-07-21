require 'pry'

# :name as attr_reader so it cannot be changed 


class Author
  attr_reader :name
  @@all = []



  def initialize(name)
    @name = name
    Author.all << self 
  end

  def self.all 
    @@all
  end 


  #Returns an array of Article instances the author has written
  #checked and complete, not clean yet 
  def articles
    Article.all.select do |a_instance|
      if a_instance.author == self 
        a_instance
      end 
    end 
  end 

  #Returns a **unique** array of Magazine instances for which the author has contributed to
  def magazines
    articles.map do |a_instance|
      a_instance.magazine 
    end 
  end 

  #Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 

  #Returns a **unique** array of strings with the categories of the magazines the author has contributed to
  #author class to article class, look for articles that overlap with author == self (magazines method)
  #from magazines method, pull the magazine.category
  #helper method flow: articles - magazines - category 
  #DONE and tested for Benson, does not remove dups from category array 
  def topic_areas
    magazines.map do |m_instances|
      m_instances.category
    end 
  end 

  def article_amount 
    articles.count 
  end 


end

=begin 
=end 