#1. Simple math equation
if 1 + 1 == 2
	puts "1 and 1 does indeed equal 2"
end
# 2. Add a string to the if statement
my_name = 'Skillcrush'
if my_name == 'SKillcrush'
	puts "Hellooooo SKillcrush!"
end
# 3. Name is not Skillcrush
name = 'Camie'
puts "What is your name?"
my_real_name = gets
if my_real_name == name
	puts "Hellooooo, Camie!"
else
	puts "Oops, I thought your name was Camie. Sorry about that, #{my_real_name}!"
end
# 4. Display message based on your favorite color. fav_color variable to be equal to your favorite color

fav_color = 'pink'
if (fav_color == 'red')
	puts "Red like fire!"
elsif (fav_color == 'orange')
	puts "Orange like, well ... an orange."
elsif fav_color == 'yellow'
	puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color == 'blue')
	puts "Blue like the sky!"
elsif (fav_color == 'purple')
	puts "Purple plums are the tastiest."
else 
	puts "Hmm, well I don't know what that color is!"
end
