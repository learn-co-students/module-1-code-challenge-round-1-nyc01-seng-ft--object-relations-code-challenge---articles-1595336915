class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end
  
  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def contributors
    articles.map {|article| article.author}.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    articles.map {|article| article.title}
  end

  def article_count_by_author
    count_hash = {}
    articles.each do |article|
      count_hash[article.author] ||= 0
      count_hash[article.author] += 1
    end
    count_hash
  end
  
  def contributing_authors
    authors_array = []
    article_count_by_author.each do |author, count| 
      if count > 2
        authors_array << author
      end
    end
    authors_array
  end
end
