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

def contributors 
  Article.all.find_all {|authors| authors.magazine == self}
end

def self.find_by_name(name)
  self.all.find {|match| match.name == name }
end

end
