class Article
@@all = []

attr_accessor :author, :magazine

def initialize(author, magazine)
    @author = author
    @magazine = magazine
    @@all << self
end
