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

at1 = Article.new("t1", a1, m1)
at2 = Article.new("t2", a1, m1)
at3 = Article.new("t3", a1, m2)
at4 = Article.new("t4", a1, m2)
at5 = Article.new("t5", a2, m5)
at6 = Article.new("t6", a3, m4)
at7 = Article.new("t7", a4, m1)
at8 = Article.new("t8", a5, m1)


### DO NOT REMOVE THIS
binding.pry

0
