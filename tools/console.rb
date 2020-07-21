require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# Author

a1 = Author.new("jzavier timm")
a2 = Author.new("joanna evans")
a3 = Author.new("molly evans")

# Magazine

m1 = Magazine.new("How to cook", "education")
m2 = Magazine.new("Monster Blood", "horror")
m3 = Magazine.new("Her heart is mine", "romance")
m4 = Magazine.new("Yummy foods", "education")

# Article

art1 = Article.new(a1, m1, "How to make REAL mac and cheese")
art2 = Article.new(a3, m2, "Stephen Kings Legacy")
art3 = Article.new(a2, m3, "Date ideas")
art4 = Article.new(a2, m4, "Japanese treats")
art5 = Article.new(a1, m4, "Brazilian Specials")

# add_article method
a1.add_article(m3, "Presents")
a2.add_article(m4, "Korean dishes")

### DO NOT REMOVE THIS
binding.pry

0
