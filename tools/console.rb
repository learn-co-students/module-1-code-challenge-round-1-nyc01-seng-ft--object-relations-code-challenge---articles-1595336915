require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
ben=Author.new("ben")
yas=Author.new("yas")
kry=Author.new("kry")
mac=Author.new("mac")
kev=Author.new("kev")

dungeons=Magazine.new("dungeons","fantasy")
kyle=Magazine.new("kyle","life")
bball=Magazine.new("mj", "sport")
krystal=Magazine.new("krystal","love")





### DO NOT REMOVE THIS
binding.pry


