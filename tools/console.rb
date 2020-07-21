require_relative '../config/environment.rb'
#require_relative './article.rb'
#require_relative './magazine.rb'
#require_relative './author.rb'
def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("potato")
a2 = Author.new("tomato")
a3 = Author.new("cutecumber")
a4 = Author.new("carrothead")

m1 = Magazine.new("sportsball illustrated","sports")
m2 = Magazine.new("super models", "retail")
m3 = Magazine.new("gamer pro", "gaming")
m4 = Magazine.new("glove enthusiasts", "retail")

t1 = "unenthused title"
t2 = "angry title"
t3 = "sad"
t4 = "exciting title"
t5 = "cool title"
t9 = "out of order title"
t6 = "lukewarm title"
t7 = "hot title"
t8 = "title to your car"

article1 = Article.new(a1,m4,t1)
article2 = Article.new(a2,m4,t2)
article3 = Article.new(a3,m4,t3)
article4 = Article.new(a4,m3,t4)
article5 = Article.new(a1,m3,t5)
article6 = Article.new(a2,m2,t6)
article7 = Article.new(a3,m2,t7)
article8 = Article.new(a4,m1,t8)

a3.articles
a3.magazines
m3.contributors
m3.articles



### DO NOT REMOVE THIS
binding.pry

0
