require 'pry'
require_relative '../config/environment.rb'
require_relative './app/article.rb'
require_relative './app/author.rb'
require_relative './app/magazine.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

jim = Auther.new("Jim Jimmy")

boats_mag = Magazine.new("Boats Magazine")

boats_article = Article.new(jim, boats_mag, "Big Boats")



### DO NOT REMOVE THIS
binding.pry

0
