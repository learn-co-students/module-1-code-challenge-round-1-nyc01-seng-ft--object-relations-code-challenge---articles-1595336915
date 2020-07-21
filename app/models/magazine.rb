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

  def articles
    Articles.all
  end

  def contributors
    # array of authors who have written for this magazine
  end

  
  def find_by_name
  end

  def article_titles
  end

   def contributing_authors
  end


end
