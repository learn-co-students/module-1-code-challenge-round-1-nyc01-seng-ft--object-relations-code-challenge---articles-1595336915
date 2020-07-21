class Article
   attr_reader :author, :title
     @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = " "
    end 
      
    def art_title

    end 

    def self.all
        @@all
    end
end
