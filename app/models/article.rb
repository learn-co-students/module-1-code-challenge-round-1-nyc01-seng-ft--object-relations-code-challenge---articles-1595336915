require 'pry'

#Article is the join class between author and magazine 
#attr_reader since the article should not be able to change it's attributes 
# article.author, article.title, and article.magazine do not need to be written out bc of attr_reader 


class Article
    attr_reader :author, :magazine, :title 
    @@all = []


    def initialize(author, magazine, title)
        @author=author
        @magazine=magazine
        @title=title
        Article.all << self 
    end 

    def self.all
        @@all
    end 

   

   

end

