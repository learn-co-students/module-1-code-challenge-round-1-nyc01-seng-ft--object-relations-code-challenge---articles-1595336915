require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#authors
ian = Author.new("Ian")
tashawn = Author.new("Tashawn")

#magazines
pets_mag = Magazine.new("Pets Magazine", "Pets")
drums_mag = Magazine.new("Drums Magazine", "Musical Instruments")
pets_mag_2 = Magazine.new("Pets Magazine", "More Pets")


#articles
feeding_pets = Article.new(ian, pets_mag, "How to Feed Your Pets")
grooming_snakes = Article.new(ian, pets_mag, "How to Groom You Snake Named Bob")
walk_pets = Article.new(ian, pets_mag, "Where to Walk Your Iguana")
drum_heads = Article.new(ian, drums_mag, "How to Tighten Your Drum Heads")
cohorts = Article.new(tashawn, pets_mag, "Training Your Cohort of CodeNewbies")
early_risers = Article.new(tashawn, pets_mag, "Waking Up Three Hours Ahead of Your Students")
teaching = Article.new(tashawn, pets_mag, "How to Be A Great Instructor ;)")






### DO NOT REMOVE THIS
binding.pry

0
