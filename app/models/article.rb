# Belongs to both Author and Magazine
class Article
    attr_reader :author, :magazine, :title
    #reader since author, magazine, title can't be changed
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

end
