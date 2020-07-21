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
 
 class Author
    attr_accessor :name
    attr_reader :author
  
    def initialize(name)
      @name = name
      @author = " "
    end
       
      def name(author)
        @author = " "
      end 
  
  end
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
 
 # Please copy/paste all three classes into this file to submit your solution!
