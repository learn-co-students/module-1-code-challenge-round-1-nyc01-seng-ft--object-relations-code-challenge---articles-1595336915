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
      #Returns an array of Author instances who have written for this magazine
    end

end
