require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


auth1 = Author.new("Me")
auth2 = Author.new("Tashawn")
auth3 = Author.new("Ian")
auth4 = Author.new("T.H. White")

mag1 = Magazine.new("Vogue", "Fashion")
mag2 = Magazine.new("People", "Gossip")
mag3 = Magazine.new("Nick", "Children")
mag4 = Magazine.new("The Sun", "Gossip")

art1 = Article.new(auth1, mag1, "Rick Owens")
art2 = Article.new(auth2, mag1, "Good Stuff")
art3 = Article.new(auth3, mag2, "Hello")
art4 = Article.new(auth4, mag3, "Yes Its Me")
art5 = Article.new(auth1, mag4, "Is the Sun Real?")
art6 = Article.new(auth1, mag1, "Good Shoes")
art7 = Article.new(auth1, mag2, "Celebrity Fears")
art8 = Article.new(auth1, mag1, "Hello Again")
art9 = Article.new(auth2, mag1, "ABCD")
art10 = Article.new(auth2, mag1, "LMFDO")





### DO NOT REMOVE THIS
binding.pry

0
