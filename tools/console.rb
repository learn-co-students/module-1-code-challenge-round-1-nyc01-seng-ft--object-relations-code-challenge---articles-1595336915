require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kanye = Author.new("Kanye West")
trump = Author.new("Donald Trump")
ld = Author.new("Larry David") 

digest = Magazine.new("Digest", "Tabloid")
ny = Magazine.new("Daily Bugle", "Periodical")
dbz = Magazine.new("Zeni Zeni", "Action")

hey = Article.new("Kanye West", "Digest", "Haven't you Heard")
covid = Article.new("Donald Trump", "Daily Bugle", "NY is on Fire")
apoc = Article.new("Larry David", "Zeni Zeni", "The sky is falling")



###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
