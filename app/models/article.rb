class Article
    attr_reader :author, :magazine, :title 
    
    @@all = []
    
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        #Returns the author for that given article
    end

    def magazine
        #Returns the magazine for that given article
    end
end