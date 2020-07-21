require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

brian = Author.new("Brian")
sam = Author.new("Same")
jenn = Author.new("Jenn")
megan = Author.new("Megan")

elle = Magazine.new("Elle", "Fashion")
tech = Magazine.new("Tech Magazine", "Tech")
cook = Magazine.new("Cooking 101", "Cooking")
apple = Magazine.new("Apple", "Tech")
cakes = Magazine.new("CakesCakes", "Cooking")

article1 = Article.new("Article 1", brian, elle)
article2 = Article.new("Article 2", brian, tech)
article3 = Article.new("Article 3", sam, tech)
article4 = Article.new("Article 4", jenn, elle)
article5 = Article.new("Article 5", jenn, elle)
article6 = Article.new("Article 6", sam, apple)
article7 = Article.new("Article 7", sam, cook)
article8 = Article.new("Article 8", jenn, elle)
article9 = Article.new("Article 9", brian, cook)










### DO NOT REMOVE THIS
binding.pry
0
