require 'pry'

# :name as attr_reader so it cannot be changed 


class Author
  attr_reader :name
  @@all = []
end 


  def initialize(name)
    @name = name
    Author.all << self 
  end

  def self.all 
    @@all
  end 


end

=begin 

- `Author#initialize(name)`
  - An author is initialized with a name, as a string.
  - A name **cannot** be changed after it is initialized.
- `Author#name`
  - Returns the name of the author

  ### Object Relationship Methods

- `Author#articles`
  - Returns an array of Article instances the author has written
- `Author#magazines`
  - Returns a **unique** array of Magazine instances for which the author has contributed to

  ### Associations and Aggregate Methods

#### Author

- `Author#add_article(magazine, title)`
  - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
- `Author#topic_areas`
  - Returns a **unique** array of strings with the categories of the magazines the author has contributed to


  =end 