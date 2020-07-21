class Author 
  
  attr_accessor :name

  @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def articles
      Articles.all.select {|article| aticle.author == self}
    end

    def magazines

    end

    def add_article(magazine, title)
        #new_article = Article.new(magazine, title)
    end

    def topic_areas
      #[] of strings with magazine categories og mags author has written in 
    end


    










end
