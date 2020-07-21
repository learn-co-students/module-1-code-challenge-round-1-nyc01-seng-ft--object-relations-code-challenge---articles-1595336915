
class Article

@@all=[]
attr_accessor :author, :magazine, :title
    def initialize(author,magazine, title)
        @author= author
        @magazine= magazine
        @title= title
        @@all<< self
    end 
    

    def self.all
        @@all
    end 

    def articles
       Article.all.find{|article| article.author == self}
    end 

    def magazines
        Magazine.all.find{|magazine| magazine.auhtor== self}

    end 




end
