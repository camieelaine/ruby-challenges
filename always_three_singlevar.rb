# always_3 Ruby script
 
# 1. Ask the user for a number
puts "Give me a number"
 
# 2. Get the user's number with gets & use to_i to convert to an integer
# 3. set to a variable
number = gets.to_i
 
# 4. add 5
number = ((((number + 5) * 2) - 4) / 2) - number
 
# 5. multiply by 2
#number = number * 2
 
# 6. subtract 4
#number = number - 4
 
# 7. divide by 2
#number= number / 2
 
# 8. subtract the first number from the final number
#number = number - first_number
 
# 9. show the final number back to the user
puts "The Number is Always #{number}"
