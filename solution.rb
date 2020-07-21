class Author
    attr_reader :name
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def articles #returns article that author has written
      Article.all.select {|a| a.author == self}
    end
  
    def magazines #returns magazine for given article
      articles.map { |a| a.magazine }.uniq
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      magazines.map { |a| a.category }.uniq
    end
  
  
  end


  class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def articles_in_magazine #returns articles in magazine
      Article.all.select { |a| a.magazine == self }
    end
  
    def contributors #returns authors who have written for magazine
      articles_in_magazine.map { |a| a.author }
    end
  
    def article_count
      self.contributors.count
    end
  
    def self.find_by_name(title)
      self.all.find { |m| m.name == title }
    end
  
    def article_titles
      articles_in_magazine.map { |a| a.title if a.magazine == self }
    end
  
    def contributing_authors #returns array of authors who wrote more than 2 articles
       articles_in_magazine.map { |a| a.author if contributors.count > 2}.compact.uniq
    end
  
  end




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

    
end
