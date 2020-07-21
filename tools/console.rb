require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

bob = Author.new("Bob Zlob")
tim = Author.new("Tim Smith")
jack = Author.new("Jack Kerouac")
ali = Author.new("Ali Smith")


si = Magazine.new("Sports Illustrated", "Sports")
atl = Magazine.new("The Atlantic", "Politics")
bum = Magazine.new("Dirt-Bagger Monthly", "Culture")
nyer = Magazine.new("The New Yorker", "Culture")
fb = Magazine.new("Football Today", "Sports")

lay = Article.new(tim, si, "Laying Down")
sit = Article.new(ali, si, "Sitting")
walk = Article.new(bob, si, "Walking 5 Steps")
run = Article.new(bob, si, "Running 5k")
climb = Article.new(jack, bum, "Climbing the Mountain")
kick = Article.new(bob, fb, "How to Kick a Ball")
dine = Article.new(ali, nyer, "Where to Dine")
pol = Article.new(tim, atl, "What is going on")






### DO NOT REMOVE THIS
binding.pry

0
