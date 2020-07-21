class Magazine
  attr_accessor :name, :category
@@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all <<self
  end

  def self.all
    @@all
  end


  def self.contributors
    Author.all.map {|author| author.magazine == self}
  end

  def find_by_name(name)
    self.all.find{|mag_name| mag_name.name == name}
  end

  def articles_titles 
    Article.all.map {|article| article.title == self}
  end

# def a_count


#   def contributing_authors
#     #need to find a way to filter by greater then
#     if author.articles > 2
#   end
# end

end
