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

  def name
    self.all.select { |author| author.name }
  end

end
