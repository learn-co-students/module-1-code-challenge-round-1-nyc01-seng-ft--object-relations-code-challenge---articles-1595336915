require_relative '../config/environment.rb'
require_relative "../app/models/article"
require_relative "../app/models/author"
require_relative "../app/models/magazine"

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

david = Author.new("David")
roy = Author.new("Roy")
chelsea = Author.new("Chelsea")
jordan = Author.new("Jordan")
alyssa = Author.new("Alyssa")

vogue = Magazine.new("Vogue", "Fashion")
mens_health = Magazine.new("Mens Health", "Fitness")
politico = Magazine.new("Politico", "Politics")
seventeen = Magazine.new("Seventeen", "Teens")
health = Magazine.new("Health", "Diet")

working_out = Article.new(david, mens_health, "Working Out")
dress_to_impress = Article.new(alyssa, vogue, "Dress To Impress")
eating_right = Article.new(jordan, mens_health, "Eeating Right")
government_scandle = Article.new(roy, politico, "Government Scandles")
celeb_gossip = Article.new(chelsea, seventeen, "Celebrity Gossip")
weights = Article.new(david, mens_health, "Weights")
what_to_eat = Article.new(david, health, "What To Eat")










### DO NOT REMOVE THIS
binding.pry

0
