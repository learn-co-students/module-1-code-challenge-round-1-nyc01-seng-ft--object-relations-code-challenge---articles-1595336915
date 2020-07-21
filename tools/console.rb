require_relative '../config/environment.rb'
require_relative '../app/models/article.rb'
require_relative '../app/models/author.rb'
require_relative '../app/models/magazine.rb'
require "pry"


def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

bob = Author.new("Bob")
sara = Author.new("Sara")
max = Author.new("Max")
jenn = Author.new("Jenn")

vogue = Magazine.new("Vogue","Fashion")
bon_appetit = Magazine.new("BA","Food")
economist = Magazine.new("Economist", "Analysis")
gq = Magazine.new("GQ","Fashion")

article1 = Article.new(bob, vogue, "Summer 2020 Look")
article2 = Article.new(sara, economist, "Fiscal Policy")
article3 = Article.new(max, gq, "Male Grooming")
article4 = Article.new(max, gq, "Fitness Routine")
article5 = Article.new(jenn, bon_appetit, "Best Cookies")
article6 = Article.new(max, gq, "Summer Colors")
article7 = Article.new(sara, bon_appetit, "Hidden Chefs")



### DO NOT REMOVE THIS
binding.pry

0
