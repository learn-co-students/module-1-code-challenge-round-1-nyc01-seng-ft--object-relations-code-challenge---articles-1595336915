class Article

    attr_reader :title, :author, :magazine
    @@all=[]

    def initialize (author,magazine,title)
        @author=author
        @magazine=magazine
        @title=title
        save
    end

    def self.all
        @@all
    end

    private 
    def save
    @@all<<self
    end

end
