require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

##Author
a1 = Author.new("Israel Canessa")
a2 = Author.new("Mario Casas")
a3 = Author.new("Morgan Freeman")
a4 = Author.new("Emma Watson")
a5 = Author.new("Anais Villegas")


##Magazine
m1 = Magazine.new("Tech", "Technology")

m2 = Magazine.new("Miracles", "Religion")
m3 = Magazine.new("NASCAR", "Sports")
m4 = Magazine.new("Fashion Week Catalog", "Fashion")
m5 = Magazine.new("Travel to Japan Now!", "Travel")







### DO NOT REMOVE THIS
binding.pry

0
