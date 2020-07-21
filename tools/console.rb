require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Person1")
author2 = Author.new("Person2")
author3 = Author.new("Person3")
author4 = Author.new("Person4")
author5 = Author.new("Person5")

magazine1 = Magazine.new("A","Food")
magazine2 = Magazine.new("B","Sports")
magazine3 = Magazine.new("C","Cars")
magazine4 = Magazine.new("D","Technology")
magazine5 = Magazine.new("E","Economy")

article1 = Article.new(author1, magazine1, "Recipe")
article2 = Article.new(author2, magazine2, "New York Knicks")
article3 = Article.new(author3, magazine3, "Elon Musk")
article4 = Article.new(author4, magazine4, "NVIDIA")
article5 = Article.new(author5, magazine5, "Stocks")
article6 = Article.new(author1, magazine2, "NFL")

#Testing All
Author.all
Magazine.all
Article.all

#Testing Author
author1.name
author2.name

#Testing Magazine
magazine1.name
magazine1.category

#Testing Article
article1.author
article1.magazine #fixed
article1.title

###Object Relationship Methods
author1.articles
author1.magazines #works

magazine1.articles
magazine1.contributors #--Fixed



### DO NOT REMOVE THIS
binding.pry

0
