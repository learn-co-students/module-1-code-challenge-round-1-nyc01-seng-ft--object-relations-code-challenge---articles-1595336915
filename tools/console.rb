require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Author
mimi = Author.new("Mimi Ojserkis")
kyle = Author.new("Kyle Smith")
amy = Author.new("Amy Fogel")
john = Author.new("John Jack")


#Magazine
vogue = Magazine.new("Vogue", "Fashion")
time = Magazine.new("Time", "News")
wired = Magazine.new("Wired", "Tech")
ny = Magazine.new("New Yorker", "News")

#Article
hiking = Article.new(mimi, ny, "Hiking NY")
kayak = Article.new(mimi, vogue, "Kayak Fashion")
nuns = Article.new(amy, time, "Nuns in NY")
jupiter = Article.new(kyle, wired, "Jupiters moons")
ice = Article.new(john, ny, "Melting ice Caps")
sun = Article.new(mimi, vogue, "Sunny Days")
night = Article.new(kyle, vogue, "Nighttime")




### DO NOT REMOVE THIS
binding.pry
"something"
0
