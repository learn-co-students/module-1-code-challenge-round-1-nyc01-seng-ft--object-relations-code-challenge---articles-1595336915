class Magazine
  attr_accessor :name, :category
  @@all =[]

  def initialize(name, category)
    @name = name
    @category = category
    save  
  end
  
  def self.all
    @@all
  end

  private
  def save
    @@all<<self
  end

end
