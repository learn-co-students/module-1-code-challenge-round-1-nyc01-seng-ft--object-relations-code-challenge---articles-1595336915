require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

mag1 = Magazine.new("this", "that")

aut1 = Author.new(mag1, "things")





### DO NOT REMOVE THIS
binding.pry
