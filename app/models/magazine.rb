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

  def all
    @@all
  end

  def name
    self.all.select {|magazine| magazine.name }
  end

  def category 
    self.all.select {|magazine| magazine.category }
  end

  

end
