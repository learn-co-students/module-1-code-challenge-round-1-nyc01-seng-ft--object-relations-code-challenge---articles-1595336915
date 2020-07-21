
class Article   ### Joiner Model
    attr_reader :author, :magazine, :title
    @@all = []

    def initialize(author,magazine, title)
        @author = author
        @magazine = magazine
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def title
        self.title
    end

    def author
        self.all.select {|article| article.author == self}
    end

    def magazine
        self.all.select {|aritcle|article.magazine == self}
    end
    
end
