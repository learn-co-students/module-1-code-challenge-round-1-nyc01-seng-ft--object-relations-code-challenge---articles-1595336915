require 'pry'
class Article
    
    attr_reader :author, :magazine, :title #nochanging
    @@all = [] 
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title 
        @@all << self
      end
     
      def self.all #.all
        @@all
      end  
end
