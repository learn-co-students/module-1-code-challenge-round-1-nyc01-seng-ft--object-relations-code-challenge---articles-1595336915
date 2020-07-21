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
bball=Magazine.new("mj", "sport")
family=Magazine.new("family","lifestyles")

# articles
#author,magazine,title
fly= Article.new(yas,dungeons, "flying high")
kids=Article.new(ben, family, "kyle")
mj=Article.new(kev, bball, "goat")
wife=Article.new(kry,family,"ben")

ben.add_article(dungeons,"shooter")


### DO NOT REMOVE THIS
binding.pry


