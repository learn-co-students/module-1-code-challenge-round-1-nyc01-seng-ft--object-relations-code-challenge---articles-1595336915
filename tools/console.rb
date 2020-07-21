require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Authors
jake = Author.new("Jake")
tashawn = Author.new("Tashawn")
teresa = Author.new("Teresa")
jeff = Author.new("Jeff")
ian = Author.new("Isaac")


# Magazines
coding = Magazine.new("Coding Weekly Magazine", "Technology")
entreprenuer = Magazine.new("Entreprenuer Magazine", "Business")
wine = Magazine.new("Wine Enthusiast Magazine", "Beer & Wine")
esquire = Magazine.new("Esquire Magazine", "Entertainment")
gq = Magazine.new("GQ Magazine", "Entertainment")
motor = Magazine.new("Motor Trend Magazine", "Car & Motorcycle")
pc = Magazine.new("PC Gamer Magazine", "Gaming")
wired = Magazine.new("Wired Magazine", "Technology")
us = Magazine.new("US Weekly Magazine", "Entertainment")
vanity = Magazine.new("Vanity Fair Magazine", "Entertainment")


# Articles
frank = Article.new(jake, esquire, "Frank Sinatra Has a Cold")
kentucky = Article.new(jeff, gq, "The Kentucky Derby is Decadent and Depraved")
mother = Article.new(tashawn, wired, "Mother Earth, Mother Board: Wiring the Plane")
federer = Article.new(ian, coding, "Federer As Religious Experience")
lobster = Article.new(teresa, entreprenuer, "Consider the Lobster")
hub = Article.new(jeff, wine, "Hub Fans Bid Kid Adieu")
fear = Article.new(jake, esquire, "Fear and Loathing in Las Vegas: A Savage Journey to the Heart of the American Dream")
ted = Article.new(tashawn, gq, "What Do You Think of Ted Williams Now?")
death = Article.new(teresa, motor, "Death of an Innocent: How Christopher McCandless Lost His Way in the Wilds")
american = Article.new(jeff, esquire, "The American Man at Age Ten")
diamond = Article.new(ian, pc, "Have You Ever Tried to Sell a Diamond?")
secrets = Article.new(jake, us, "Secrets of the Little Blue Box")
hero = Article.new(tashawn, vanity, "Can you say…”Hero”?")
no_help = Article.new(jake, esquire, "I Don't Need Help, or do I?")








### DO NOT REMOVE THIS
binding.pry

0
