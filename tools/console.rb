require_relative '../config/environment.rb'
require 'pry'
require_relative '../app/models/article'
require_relative '../app/models/author'
require_relative '../app/models/magazine'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

climbing = Magazine.new("Anchor Magazine", "Rock Climbing")
sailing = Magazine.new("Canvas", "Sailing")
electronics = Magazine.new("Shocking Magazine", "Electronics")
science = Magazine.new("The Bold Magazine", "Science")
fashion = Magazine.new("Pleated Monthly", "Fashion")

#generate some authors
def authors
  r = Random.new
  a = r.rand(1..20)
  index = 0
  while index < a
    Author.new("Author#{index + 1}")
    index += 1
  end
  Author.all
end

#generate some articles for each magazine from each author
def send_articles
  r = Random.new
  words = ["Hello", "Magic", "Practice", "Sky", "Steam", "Power", "Circuit", "Sew", "Sink", "Climb"]
  Magazine.all.each do |magazine|
    Author.all.each do |author|
      a = r.rand(0...words.count)
      author.add_article(magazine, "How to #{words[a]}.")
    end
  end
end

def seed
  authors
  send_articles
end

#create some repeat contributions

seed

peter = Author.new("Peter Parker")
peter.add_article(climbing, "Scaling Fast, Repelling Slowly")
peter.add_article(climbing, "Rock It")
peter.add_article(climbing, "Silver Rocks")
peter.add_article(climbing, "Hard Rock Patté")

alex = Author.new("Alex Mac")
alex.add_article(science, "Puddles to Poodles")
alex.add_article(science, "Finger Static")
alex.add_article(science, "How To Melt")

sammy = Author.new("Sammy David, Jr.")
music = Magazine.new("Singing", "Music")
sammy.add_article(music, "The Blue New")
sammy.add_article(music, "Chords & Courage")
sammy.add_article(music, "Progressing the Idiom of Jazz")
sammy.add_article(music, "Mixolydian it Up")
sammy.add_article(music, "Dorian the Blue")
sammy.add_article(music, "Flat Top")

dean = Author.new("Dean Martin")
dean.add_article(music, "The Martin Martini")
dean.add_article(music, "Dean of the Department")
dean.add_article(music, "Didn't I Tell Ya?")
dean.add_article(music, "Olives are Sweet")

def repeats(magazine)
  puts "#{magazine.name} receives repeat contributions from authors, such as #{magazine.contributing_authors}."
end

def further_reading
  repeats(climbing)
  repeats(science)
  repeats(music)  
end







### DO NOT REMOVE THIS
binding.pry

0
