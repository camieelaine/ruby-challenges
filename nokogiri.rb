# Nokogiri practice

# Tell script it needs nokogiri to work
require 'nokogiri'
# Tell script it needs open-uri, which is a dependency that Nokogiri requires 
require 'open-uri'
# Tell Nokogiri tp go out and open the URL skillcrush.com and get the HTML document, bring it back and save it to the doc vari
doc = Nokogiri::HTML(open("http://skillcrush.com"))
# puts doc
#puts doc.inspect
# searching the doc for h1s
#puts doc.search('h1')

#puts doc.search('h1.entry-title')

# Use the css method. CSS works like search, but allows us to use only the class names or id names. Still returns the whole HTML element
#puts doc.css('.entry-title')

# Use the inner_html method! Just like in JavaScript to get just the text
#puts doc.css('.entry-title').inner_html

# use the children method
#puts doc.css('.entry-title').children
# If you just want the first chunk, use array notation
#puts doc.css('.entry-title').children[0]

#To see all methods you can use the methods Ruby method. This will print out a list of all the Nokogiri methods and Ruby methods that can be called on the doc object.
puts doc.methods 
