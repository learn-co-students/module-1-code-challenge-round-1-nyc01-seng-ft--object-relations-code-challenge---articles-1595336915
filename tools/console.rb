require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Magazine.new("E Magazine", "Entertainment")
m2 = Magazine.new("Sports Ill", "Sports")
m3 = Magazine.new("New Yorker", "Current events")
m4 = Magazine.new("People", "Entertainment")

a1 = Author.new("Jenn Y")
a2 = Author.new("Ian R")
a3 = Author.new("Bill B")
a4 = Author.new("Brian L")
a5 = Author.new("Vincent Y")

art1 = Article.new(a1, m1, "New show review")
art2 = Article.new(a1, m4, "Celeb seen at")
art3 = Article.new(a2, m2, "Soccer match")
art4 = Article.new(a2, m2, "Superbowl article")
art5 = Article.new(a2, m3, "Pandemic")
art6 = Article.new(a3, m2, "NYY vs NYM")
art7 = Article.new(a4, m3, "Breaking news election")

binding.pry

0
