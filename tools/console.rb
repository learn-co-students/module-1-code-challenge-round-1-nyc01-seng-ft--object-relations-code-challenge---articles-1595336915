require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


a1 = Author.new("a")
a2 = Author.new("b")
a3 = Author.new("c")
a4 = Author.new("d")
a5 = Author.new("e")

m1 = Magazine.new("ab", "cat1")
m2 = Magazine.new("bc", "cat2")
m3 = Magazine.new("cd", "cat3")
m4 = Magazine.new("de", "cat4")
m5 = Magazine.new("ef", "cat5")

at1 = Article.new(a1, m1, "t1")
at2 = Article.new(a1, m1, "t2")
at3 = Article.new(a1, m2, "t3")
at4 = Article.new(a1, m2, "t4")
at5 = Article.new(a2, m5, "t5")
at6 = Article.new(a3, m4, "t6")
at7 = Article.new(a4, m1, "t7")
at8 = Article.new(a5, m1, "t8")


### DO NOT REMOVE THIS
binding.pry

0
