class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def articles
      #Returns an array of Article instances the author has written
    end

    def magazine
      #Returns a **unique** array of Magazine instances for which the author has contributed to
    end

end
