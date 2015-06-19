# Always 3 Ruby script
 
# 1. ask the user for a number
puts "Give me a number"
 
# 2. get the user's number with gets & use to_i to convert to an integer
# 3. set to a variable
first_number = gets.to_i
 
# 4. add 5
mid_number = first_number + 5
 
# 5. multiply by 2
mid_number = mid_number * 2
 
# 6. subtract 4
mid_number = mid_number - 4
 
# 7. divide by 2
mid_number = mid_number / 2
 
# 8. subtract the first number from the final number
final_number = mid_number - first_number
 
# 9. show the final number back to the user
puts "Always #{final_number}"