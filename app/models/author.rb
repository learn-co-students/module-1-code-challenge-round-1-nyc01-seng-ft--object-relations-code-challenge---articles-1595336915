class Author
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    save
  end

  private
  def save
    @@all<<self
  end

end
