class Article

    attr_reader :author, :magazine, :title          # Can not be changed

    @@all = []

    # initializes the following attributes (author, magazine, title)
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
    
    # Able to call/access all instances of the class
    def self.all
        @@all
    end

    # Returns all authors of the same magazine
    def authors
        Article.all.select { |details| 
            #binding.pry
            details.author == self.author}
      end
    
      # Returns a unique array of magazine instances the author has helped write
      def magazines
        Article.all.map { |author| author.magazine}.uniq    # uniq is a method to help filter duplicates
      end

    # Returns a unique array of Magazine instances for which the author has contributed to
    # def magazine
    #     Author.all.map { |article| article.magazine}
    # end

end
