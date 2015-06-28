# Nokogiri practice scraping HTML for a Martha Stewart Brick Sandwich recipe 

# Tell script it needs nokogiri to work
require 'nokogiri'
# Tell script it needs open-uri, which is a dependency that Nokogiri requires 
require 'open-uri'
# Tell Nokogiri tp go out and open the URL skillcrush.com and get the HTML document, bring it back and save it to the doc vari
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
# Search HTML for different types of elements
# Found 'components-item' as the clas name used for ingredients in the li element 
#search = doc.css('li')
#puts search

# Inspect the document
#puts doc.inspect

# List out the ingredients, but includes the HTML markup for <li>
#puts doc.search('li.components-item')

# Use the css method. CSS works like search, but allows us to use only the class names or id names. Still returns the whole HTML element
#puts doc.css('li.components-item')

# Use the inner_html method! Just like in JavaScript to get just the text
# This worked. Returned just the text
#puts doc.css('li.components-item').inner_html

# use the children method
# This worked. Returned just the text with a line space in between each line
puts doc.css('li.components-item').children
# To return a specific item, use array notation
#puts doc.css('li.components-item').children[0]

#To see all methods you can use the methods Ruby method. This will print out a list of all the Nokogiri methods and Ruby methods that can be called on the doc object.
# puts doc.methods 


