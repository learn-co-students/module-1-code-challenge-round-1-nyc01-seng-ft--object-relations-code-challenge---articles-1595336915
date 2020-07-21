class Author
  attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  
  end


  def self.all
    @@all
  end
  def new_article(name)
    Author.new(name)
   end



  def add_article (magazine, title)
    Author.new(magazine, title)
   end



end
