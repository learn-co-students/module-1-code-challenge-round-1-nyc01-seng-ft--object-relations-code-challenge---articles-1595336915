require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


rock_music = Magazine.new("Rock Weekly", "Music")
pop_music = Magazine.new("Pop Weekly", "Music")
time = Magazine.new("Time", "Current Events")
psychology = Magazine.new("Psychology Today", "Science/Technology")

bob = Author.new("Bob")
jane = Author.new("Jane")
mike = Author.new("Mike")
amy = Author.new("Amy")
sheldon = Author.new("Sheldon")

qotsa = Article.new(bob, rock_music, "Queens of the Stone Age Review")
raconteurs = Article.new(jane , rock_music, "Raconteurs Review")
guitar = Article.new(bob, rock_music, "Has Electric Guitar Gone Out Of Style?")
zepp = Article.new(bob, rock_music, "New Led Zeppelin Bootleg")
guitar = Article.new(mike, rock_music, "Has Electric Guitar Gone Out Of Style?")
new_artists = Article.new(jane, rock_music, "Must See New Artists")
grammys = Article.new(jane, rock_music, "Why Are There No Rock Bands at the Grammys?")
one_d = Article.new(bob, pop_music, "Harry Styles: Off the Stage")
neuro_stuff = Article.new(amy, psychology, "New Neuroscience Stuff")
more_neuro_stuff = Article.new(bob, psychology, "More New Neuroscience Stuff")
love = Article.new(amy, psychology, "Why I Love Sheldon")
life_hacks = Article.new(amy, psychology, "10 New Life Hacks To Try")




### DO NOT REMOVE THIS
binding.pry

0
