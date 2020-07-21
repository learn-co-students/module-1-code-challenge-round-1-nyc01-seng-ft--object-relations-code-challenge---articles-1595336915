
require_relative '../config/environment.rb'
# require_relative '../app/models/magazine.rb'




def reload
  load 'config/environment.rb'
end

##Test with## ruby tools/console.rb ####

###  WRITE YOUR TEST CODE HERE ###

# Magazine Instances
nintendo = Magazine.new("Nintendo Power", "Video Games")
vogue = Magazine.new("Vogue", "Fashion")
digest = Magazine.new("Reader's Digest", "Lifestyle")
xbox = Magazine.new("Xbox Monthly", "Video Games")

# Author Instances
reggie = Author.new("Reggie Fils Aime")
anna = Author.new("Anna Wintour")
martha = Author.new("Martha Stewart")
bill = Author.new("Bill Gates")

# Article Joiners

names = Article.new(reggie, nintendo, "Reggie is Taking Names")  
spring = Article.new(anna, vogue, "Florals for Spring?")
recipe = Article.new(martha, digest, "10 min Nachos")
millenia = Article.new(bill, xbox, "Introducing the Xbox Millenia")
how_to = Article.new(martha, digest, "Keep frogs out of Pool")





### DO NOT REMOVE THIS
binding.pry

0
