class Magazine
  attr_accessor :name, :category                # Can be changed if needed

  @@all = []
  # initializes the following attributes (author, magazine, title)
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  # Able to call/access all instances of the class
  def self.all
    @@all
  end


end
