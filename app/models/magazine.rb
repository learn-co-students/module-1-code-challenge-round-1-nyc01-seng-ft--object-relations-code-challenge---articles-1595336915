require 'pry'


class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category

  end


end

=begin 
- `Magazine#initialize(name, category)`
  - A magazine is initialized with a name as a string and a category as a string
  - The name and category of the magazine **can be** changed after being initialized.
- `Magazine#name`
  - Returns the name of this magazine
- `Magazine#category`
  - Returns the category of this magazine
- `Magazine.all`
  - Returns an array of all Magazine instances

  ### Object Relationship Methods

  - `Magazine#contributors`
  - Returns an array of Author instances who have written for this magazine

  ### Associations and Aggregate Methods


#### Magazine

- `Magazine.find_by_name(name)`
  - Given a string of magazine's name, this method returns the first magazine object that matches
- `Magazine#article_titles`
  - Returns an array strings of the titles of all articles written for that magazine
- `Magazine#contributing_authors`
  - Returns an array of authors who have written more than 2 articles for the magazine


=end