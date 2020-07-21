class Article
    attr_reader :category
    
    @@all = []
    
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
end