class Article
  attr_reader :title

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
  end
end
