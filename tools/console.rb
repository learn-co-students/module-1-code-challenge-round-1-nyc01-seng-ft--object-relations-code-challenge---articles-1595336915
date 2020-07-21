require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Objects I am using

ryan_flynn = Author.new("Ryan Flynn")
cindy_hopkins = Author.new("Cindy Hopkins")
jessica_smith = Author.new("Jessica Smith")

coding_weekly = Magazine.new("Coding Weekly", "programming")
people = Magazine.new("People Magazine", "celebrities")
people2 = Magazine.new("People Magazine", "actually about everyday people")

enumerables_ryan = Article.new(ryan_flynn, coding_weekly, "Ruby's Most Helpful Enumerables")
coding_challenge_ryan = Article.new(ryan_flynn, coding_weekly, "The Coding Challenge: My Story")
kim_k_jessica = Article.new(jessica_smith, people, "Kim Kardashian said what???")
kim_k_cindy = Article.new(cindy_hopkins, people, "Why we are obsessed with Kim Kardashian right now")
kanye_cindy = Article.new(cindy_hopkins, people, "All About Kanye")
drake_cindy = Article.new(cindy_hopkins, people, "All About Drake")
coding_challenge_cindy = Article.new(cindy_hopkins, coding_weekly, "How I Passed the Coding Challenge and Why Ryan Didn't")

#My tests

ryan_flynn.name 
cindy_hopkins.name

Magazine.all 
people.name 
coding_weekly.name
coding_weekly.category

kim_k_cindy.title
Article.all
kim_k_jessica.author
enumerables_ryan.magazine 

ryan_flynn.articles
cindy_hopkins.articles
cindy_hopkins.magazines

people.contributors 
coding_weekly.contributors

ryan_flynn.add_article(people, "Top 10 The Weeknd Songs and Why We Love Them") 
ryan_flynn.topic_areas

Magazine.find_by_name("People Magazine") #Should return people magazine with category celebrities
people.article_titles 
people.contributing_authors

### DO NOT REMOVE THIS
binding.pry

0
