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
    Article.all.select {|a| a.magazine == self}
  end
  def contributors #authors
    articles.map {|a| a.author}.uniq
  end

  def article_titles
    articles.map {|a| a.title}
  end

  def contributing_authors
   array = articles.map {|a| a.author}
    hash = array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    result = hash.select {|k, v| k if v > 2}.to_a.flatten!
    result[0]
  end

  def self.find_by_name(name)
    all.find {|m| m.name == name}
  end



end
