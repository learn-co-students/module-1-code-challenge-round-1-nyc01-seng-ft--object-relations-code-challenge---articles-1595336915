require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

thompson = Author.new("Hunter S. Thompson")
carl = Author.new("Carl Johnson")
hersh = Author.new("Hersh Walker")
sheehan = Author.new("Neil Sheehan")
gellhorn = Author.new("Martha Gellhorn")

nyt = Magazine.new("New York Times", "Sports")
wp = Magazine.new("Washing Post", "Comedy")
wsj = Magazine.new("Wall Street Journal", "Business")
daily = Magazine.new("The Daily News", "Entertainment")
cnn = Magazine.new("CNN", "Travel")

break_a_leg = Article.new(carl, nyt, "Break a leg!")
laugh_last = Article.new(thompson, wp, "Who laughed last?")
numbers = Article.new(hersh, wsj, "Do the numbers!")
lights = Article.new(sheehan, daily, "Flashing Lights!")
world = Article.new(gellhorn, cnn, "Around The World!")



### DO NOT REMOVE THIS
binding.pry

0
