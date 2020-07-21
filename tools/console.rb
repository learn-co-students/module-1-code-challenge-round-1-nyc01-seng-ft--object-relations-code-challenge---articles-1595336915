require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

nyt = Magazine.new("New York Times", 'news')
atlantic = Magazine.new("The Atlantic", 'opinion')
nejm = Magazine.new("Mew England Journal", 'science')

sedaris = Author.new("David Sedaris")
habberman = Author.new("Maggie Habberman")
benson = Author.new('Kenna Benson')

a1 = Article.new(sedaris, nyt , "Title 1")
a2 = Article.new(habberman, atlantic , "Title 2")
a3 = Article.new(benson, nejm , "Title 3")
a4 = Article.new(benson, nyt , "Title 4")
a5 = Article.new(benson, nyt , "Title 5")










### DO NOT REMOVE THIS
binding.pry

0
