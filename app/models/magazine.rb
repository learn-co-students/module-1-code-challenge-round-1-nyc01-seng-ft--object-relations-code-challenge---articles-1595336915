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

  def save
    @@all << self 
  end 

  def articles
    Article.all.select {|i| i.magazine == self}
  end 

  def authors
    self.articles.map {|i| i.author}
  end

  def self.find_by_name(name)
    self.all.find {|i| i.name == name}
  end

  def article_titles
    self.articles.map {|i| i.title}
  end

  
  def contributing_authors
    new_array = [] 
    self.authors.each_with_object(Hash.new(0)) do |i, author_histo|
      author_histo[i] += 1
        if author_histo[i] > 2
        new_array << i 
        end
    end
    new_array
  end

end
