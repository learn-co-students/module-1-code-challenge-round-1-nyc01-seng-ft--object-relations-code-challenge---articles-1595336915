require 'pry'


class Magazine
  attr_accessor :name, :category
  @@all=[]


  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 

  end

  def self.all
    @@all
  end 

  #join method that returns article instances by magazine 
  def articles
    Article.all.select do |a_instance|
      if a_instance.magazine == self 
        a_instance
      end 
    end 
  end 

  # - Returns an array of Author instances who have written for this magazine
  # use articles to access article/magazine overlap 
  # pull the authors from those overlapping instances 
  #works but does not remove duplicates yet 
  def contributors 
    articles.map do |a_instance|
      a_instance.author
    end 
  end 

  #DONE 
  # Given a string of magazine's name, this method returns the FIRST  magazine object that matches
  #works on the whole magazine class 
  def self.find_by_name(name)
    all.find do |m_instance|
      m_instance.name == name  
    end 
  end 

  #DONE and tested 
  #eturns an array strings of the titles of all articles written for that magazine
  #helper method path: articles(articles owned by this mag), then collet title names 
  def article_titles
    articles.collect do |a_instance|
      a_instance.title 
    end 
  end 



  # Returns an array of authors who have written more than 2 articles for the magazine
  def contributing_authors
    contributors.map do |a_instance|
      binding.pry 
      if a_instance.article_amount >= 2 
      end 
    end 

  end 

end

=begin 



=end