class Article
    attr_reader :author, :magazine, :title
    @@all = [] 

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        save
    end

    def self.all 
        @@all 
    end 

    def save 
        @@all << self
    end 


end
