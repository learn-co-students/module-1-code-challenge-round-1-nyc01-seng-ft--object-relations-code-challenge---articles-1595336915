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

    # def articles
    #     Article.all.filter { |piece| piece == self}
    # end

    # def author
    #     articles.all.map { |piece| piece }
    # end

end
