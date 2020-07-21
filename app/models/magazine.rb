class Magazine

  attr_accessor :author, :category, :article, :name

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all = self
  end

  def self.all 
    @@all 
  end

  def find_by_name(name)
  magazine.select{|magazine| magazine.name == name}
  end

  def article_titles 
    all.select{|magazine| magazine.article == article}
  end

  def contributing_authors
  end



end
