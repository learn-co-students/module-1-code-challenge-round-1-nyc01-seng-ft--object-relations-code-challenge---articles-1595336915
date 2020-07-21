# require_relative '../config/environment.rb' -- require_all wasn't working properly, giving errors
require_relative '../app/models/author.rb'
require_relative '../app/models/magazine.rb'
require_relative '../app/models/article.rb'

# def reload -- require_all wasn't working properly, giving errors
#   load 'config/environment.rb'
# end


###  WRITE YOUR TEST CODE HERE ###

# (name)
author1 = Author.new("Hemingway")
author2 = Author.new("Twain")
author3 = Author.new("Orwell")

# (name, category)
zine1 = Magazine.new("Time", "real")
zine2 = Magazine.new("Fiction", "fiction")

# (author, magazine, title)
article1 = Article.new(author1, zine1, "cuba")
article2 = Article.new(author2, zine2, "fantasy")
article3 = Article.new(author1, zine2, "boats")
article4 = Article.new(author1, zine2, "stuff")
article5 = Article.new(author1, zine2, "being a writer")
article6 = Article.new(author2, zine1, "wlghjarof")
article7 = Article.new(author2, zine1, "alihnorahfa")
article8 = Article.new(author3, zine1, "big brother")

author1.articles

author1.magazines

zine1.articles

zine2.contributors

author2.add_article(zine1, "life")

author2.topic_areas

Magazine.find_by_name("Time")

zine2.article_titles

zine2.contributing_authors

### DO NOT REMOVE THIS
binding.pry

0
