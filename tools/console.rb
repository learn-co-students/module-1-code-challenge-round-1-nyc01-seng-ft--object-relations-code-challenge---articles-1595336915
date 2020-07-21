require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Victor")
author2 = Author.new("Lexxi")
author3 = Author.new("Colton")
author4 = Author.new("Tom")

magazine1 = Magazine.new("Barista Magazine", "Latte Art")
magazine2 = Magazine.new("Luxury Handbags", "Chanel")
magazine3 = Magazine.new("Resident Advisor", "Innervisions")
magazine4 = Magazine.new("Wired", "C")

article1 = Article.new(author1, magazine1, "How To Pour A Tulip")
article2 = Article.new(author2, magazine2, "How To Spot A Fake Bag")
article3 = Article.new(author3, magazine3, "Dixon")
article4 = Article.new(author4, magazine4, "The Nuances of C")





### DO NOT REMOVE THIS
binding.pry
"Yay! My first code challenge!"

