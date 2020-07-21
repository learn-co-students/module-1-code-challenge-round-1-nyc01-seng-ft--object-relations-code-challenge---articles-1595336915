require_relative '../config/environment.rb'
require_relative '../app/models/article.rb'
require_relative '../app/models/author.rb'
require_relative '../app/models/magazine.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Shakespeare")
author2 = Author.new("Edgar Allan Poe")
author3 = Author.new("Dr.Seuss")

magazine1 = Magazine.new("New York Times", "News")
magazine2 = Magazine.new("Time", "News")
magazine3 = Magazine.new("WIRED","Tech")

article1 = Article.new(author1,magazine1, "Test Title 1")
article2 = Article.new(author2, magazine2, "Test Title 2")
article3 = Article.new(author3, magazine3, "Test Title 3")





### DO NOT REMOVE THIS
binding.pry

0
