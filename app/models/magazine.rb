class Magazine
  @@all = []
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{|art| art.magazine == self}
  end

  def contributors
    articles.map{|art| art.author}.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find{|mag| mag.name == name}
  end

  def article_titles
    articles.map{|art| art.title}
  end

  def contributing_authors
    var = articles.map{|art| art.author}
    final_hash = var.each_with_object(Hash.new(0)) do |author, new_hash|
      new_hash[author] += 1
     end
    final_hash.select {|k,v| v > 1}.keys
  end
end
