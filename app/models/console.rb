require "pry"
require "./author.rb"
require "./article.rb"
require  "./magazine.rb"

pop_sci = Magazine.new("pop_sci", "science")
playbow = Magazine.new("playboy", "lewd")
pop_mech = Magazine.new("pop_mech", "science")
make = Magazine.new("make", "crafts")

jack = Author.new("jack")
jane = Author.new("jane")
jim = Author.new("jim")

topic1 = Article.new("jim", "pop_sci", "airplane")
topic2 = Article.new("jane", "pop_mech", "subs")
topic3 = Article.new("jim", "pop_sci", "train")
topic4 = Article.new("jim", "pop_sci", "pills")
topic5 = Article.new("jack", "playboy", "workout")


binding.pry