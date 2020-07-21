require_relative '../config/environment.rb'
require_relative '../app/models/article.rb'
require_relative '../app/models/author.rb'
require_relative '../app/models/magazine.rb'

greg = Author.new("greg")
mary = Author.new("mary")
mandy = Author.new("mandy")
simon = Author.new("simon")
ian = Author.new("ian")

lulu = Magazine.new("lulu", "pop")
xiuxiu = Magazine.new("xiuxiu", "music")
shhh = Magazine.new("shhh", "music")
tasty = Magazine.new("tasty", "food")


what = Article.new(greg, xiuxiu, "what")
how = Article.new(greg, xiuxiu, "how")
okay = Article.new(mary, lulu, "okay")
fore = Article.new(mandy, lulu, "fore")
gross = Article.new(ian, tasty, "gross")
yum = Article.new(simon, tasty, "yum")
final = Article.new(simon, lulu, "final")

def reload
  load 'config/environment.rb'
end




###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
