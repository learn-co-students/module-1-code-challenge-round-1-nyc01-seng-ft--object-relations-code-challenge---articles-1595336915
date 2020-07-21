require 'pry'
require_relative './article.rb'
require_relative './author.rb'
require_relative './magazine.rb'

jim = Author.new("Jim Jimmy")

boats_mag = Magazine.new("Boats Magazine", "Boats")

boats_article = Article.new(jim, boats_mag, "Big Boats")

binding.pry