# Has many articles
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

  # undefined method all, loop back
  def contributors
    self.all.map { |author| author.contributor }
  end

  def self.find_by_name(name)
    all.select { |magazine| magazine.name == name }
  end

  # Is returning array of strings for all titles across all magazines
  # I need array of strings for only the magazine
  def article_titles
    Article.all.map { |magazine| magazine.title }
  end

  def contributing_authors
    # return array of authors who have written > 2
    # undefined method all
    self.all.select { |author| author.article > 2 }
  end

end
