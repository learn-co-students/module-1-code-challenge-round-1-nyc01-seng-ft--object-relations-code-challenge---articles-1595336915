require 'pry'


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

    def title
        @title
    end

    def articles
    
    end


    def author
        self.all.select {|article| article.author == self}
    end

    def magazine

    end









end
