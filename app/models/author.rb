class Author
  attr_reader :name
  #changed accessor to reader since name cannot be changed after initialization
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # No .all method requested in instructionsM
  # def self.all
  #   @@all
  # end

end
