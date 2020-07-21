class Article
    attr_reader :magazine, :author, :title
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        Article.all << self
    end

    def self.all
        @@all
    end


end
