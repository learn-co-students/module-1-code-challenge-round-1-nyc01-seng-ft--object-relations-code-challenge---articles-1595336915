class Article
    #Once an article is written shouldn't change details so I did a reader
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

    private 

    def save
        @@all << self
    end

end
