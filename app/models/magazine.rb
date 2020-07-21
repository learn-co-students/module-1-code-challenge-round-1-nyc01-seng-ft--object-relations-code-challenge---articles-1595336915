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
    Article.all.select { |article| article.magazine == self }
  end

  def contributors
    articles.map(&:author)
  end

  def self.find_by_name(name)
    Magazine.all.find { |magazine| magazine.name == name }
  end

  def article_titles
    articles.map(&:title)
  end

  def contributing_authors
    authors = []

    count_contribution = contributors.inject(Hash.new(0)) { |hash,count|
      hash[count]+= 1; hash
    }

    count_contribution.each { |contributor, count|
      if count > 2
        authors << contributor
      end
    }

    authors
  end

end
