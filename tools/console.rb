require 'pry'
require_relative '../config/environment.rb'
require_relative './models/article.rb'
require_relative './models/author.rb'
require_relative './models/magazine.rb'
def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

gloria= Author.new("gloria moukoko")
minelie= Author.new("minelie goma")
fleury = Author.new("fleury ayessa")

frere= Article.new("gloria", "demi frere", "aurevoir")
soeur=Article.new("fleury", "mensong", "amen soeur")
ecoute= Article.new("minelie", "adieu", "hello")
revien= Article.new("fleury", "silence", "demain")







### DO NOT REMOVE THIS
binding.pry

0
