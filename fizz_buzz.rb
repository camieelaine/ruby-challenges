# FizzBuzz App
#Write a program that prints the numbers from 1 to 100

#For multiples of three, print “Fizz” instead of the number

# For multiples of five, print “Buzz” instead of the number

# For numbers which are multiples of both three and five, print “FizzBuzz” instead of the number

number = 0

while number <  101
	if number%3 == 0 && number %5 == 0
		puts "FizzBuzz"
	
	elsif number%3 == 0
		puts "Fizz"
	
	elsif number%5 == 0
		puts "Buzz"
	else 		
		puts number
	end
	number+=1
end
