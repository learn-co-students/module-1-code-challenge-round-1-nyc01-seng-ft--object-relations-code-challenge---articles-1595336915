require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# will = Author.new("Will")
# daffy = Author.new("Daffy")
# bruce = Author.new("Bruce")

# philly = Magazine.new("Philly Times", "Basketball")
# looney_tunes = Magazine.new("Looney Comics ", "Cartoons")
# gotham = Magazine.new("Batman", "City of Gotham")

will = Author.new("Will")
philly = Magazine.new("Philly Times", "Basketball")
born_and_raised = Article.new(will, philly, "Born and Raised")


daffy = Author.new("Daffy")
looney_tunes = Magazine.new("Looney Comics ", "Cartoons")
the_duck = Article.new(daffy, looney_tunes, "The Duck")


bruce = Author.new("Bruce")
gotham = Magazine.new("Batman", "City of Gotham")
batmobile = Article.new(bruce, gotham, "Batmobile")









### DO NOT REMOVE THIS
binding.pry

0
