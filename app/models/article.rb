class Article
    attr_reader :author, :magazine
    @@all = []
    def initialize(author, magazine)
        @author = author
        @magazine = magazine
        # @title = title
        @@all << self
    end

    def self.all
        @@all
    end



end
