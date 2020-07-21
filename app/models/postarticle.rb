class PostArticle
    attr_accessor :article, :magazine
    @@all =[]
  
    def initialize(article, magazine)
      @article=article
      @magazine=magazine
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

  