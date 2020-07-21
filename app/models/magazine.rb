class Magazine
  attr_accessor :name, :category
  @@all =[]

  def initialize(name, category)
    @name = name
    @category = category
    save  
  end

  def articles
    Article.all.select{|e|e.magazine==self}
  end

  def contributors
    articles.map{|e|e.author}
  end
  
  def self.find_by_name (string)
    Magazine.all.select{|e|e.name==string}
  end

  def article_titles
    temp=Article.all.select{|e|e.magazine==self}
    temp.map{|e|e.title}
  end

  def contributing_authors
    x= articles.map{|e|e.author} 
    freq=x.inject(Hash.new(0)){|h,v| h[v]+=1; h}
    authors=freq.select{|k,v|v>2}
    output= "There are no authors with more than 2 articles" if authors.empty?
    output= authors if !authors.empty?
    # freq=x.inject(Hash.new(0)){|hashing,keys}hashing[keys]+=1;hasging}|
    # new_out=output.each { | v | h.store(v, h[v]+1) }
    # output= "There are no authors with more than 2 articles" if output.count < 3
    # #I need sort the array with authors. find authors that appear more than twice
    # output
    # new_out
    output
  end

  def self.all
    @@all
  end

  private
  def save
    @@all<<self
  end

end
