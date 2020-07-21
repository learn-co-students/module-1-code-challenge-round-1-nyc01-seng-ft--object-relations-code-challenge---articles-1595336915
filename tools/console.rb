require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

karan = Author.new("Karan Chauhan")
nazia = Author.new("Nazia T")

pbs = Magazine.new("PBS", "Documnetary")
nike = Magazine.new("NIKE", "Sports")

a1 = Article.new(karan, pbs, "The Beauty of Earth")
a2 = Article.new(nazia, pbs, "The Ocean")
a3 = Article.new(karan, pbs, "The Moon")
a4 = Article.new(karan, nike, "Fitness")
a5 = Article.new(nazia, nike, "Diet")







### DO NOT REMOVE THIS
binding.pry

0
