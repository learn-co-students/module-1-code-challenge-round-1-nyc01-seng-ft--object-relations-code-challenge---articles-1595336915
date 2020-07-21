 require_relative '../config/environment.rb'
 

def reload
  load 'config/environment.rb'
end



###  WRITE YOUR TEST CODE HERE ###

#authors
author1 = Author.new("jane doe")
author2 = Author.new("john doe")
author3 = Author.new("BATMAN")

#magazines
mag1 = Magazine.new("arm wrestling","fun")
mag2 = Magazine.new("about cats","pets")
mag3 = Magazine.new("bitwise","tech")

#articles
article1 = Article.new(author1,mag1,"Don't Sweat it")
article2 = Article.new(author1,mag1,"Sweaty Palms?")
article3 = Article.new(author2,mag2,"cats & dogs")







### DO NOT REMOVE THIS
binding.pry

0
