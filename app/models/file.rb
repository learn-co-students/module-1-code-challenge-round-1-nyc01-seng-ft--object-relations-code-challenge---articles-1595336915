#                         Object Relationship Methods

#     Article

# Article#author
# Returns the author for that given article

# Article#magazine
# Returns the magazine for that given article

#     Author

# Author#articles
# Returns an array of Article instances the author has written

# Author#magazines
# Returns a unique array of Magazine instances for which the author has contributed to

#     Magazine
# Magazine#contributors
# Returns an array of Author instances who have written for this magazine


#                         Associations and Aggregate Methods

#     Author
# # Author#add_article(magazine, title)
# # Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.

# Author#topic_areas
# Returns a unique array of strings with the categories of the magazines the author has contributed to

#     Magazine

# Magazine.find_by_name(name)
# Given a string of magazine's' name, this method returns the first magazine object that matches

# Magazine#article_titles
# Returns an array strings of the titles of all articles written for that magazine

# Magazine#contributing_authors
# Returns an array of authors who have written more than 2 articles for the magazine