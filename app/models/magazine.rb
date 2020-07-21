class Magazine
  attr_accessor :name, :category

@@all= [].to_set
  def initialize(name, category)
    @name = name
    @category = category
    @@all<< self
  end

  def self.all
    @@all
  end
  def contributors
    @author.select{|author| author.magazine== self}
  end 

  def self.find_by_name(name)

    @magazine.find do |name|
      name.author
  end


  def article_titles

@title.all.select{|title| title.magazine== self}
  end

  def contributing_authors
    
  end 


end
