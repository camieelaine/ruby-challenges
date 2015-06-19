# always_3 Ruby script
 #Define the method
 def always_three(number)
	
	# 4. add 5,  multiply by 2, subtract 4, divide by 2, subtract the first number from the final number
	number = ((((number + 5) * 2) - 4) / 2) - number
 	# 5. show the final number back to the user

end

# 1. Ask the user for a number
	puts "Give me a number"
 	# 2. Get the user's number with gets & use to_i to convert to an integer
	# 3. set to a variable
	number = gets.to_i

# Call the method
	puts "The Number is Always" + always_three(number).to_s
