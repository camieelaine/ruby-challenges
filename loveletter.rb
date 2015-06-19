# Love Letter

puts "Have you been good? Please answer Y/N:"
answer = gets.chomp.downcase

while (answer.downcase == "n")
	puts "Have you been good? Please answer Y/N:"

answer = gets.chomp.downcase
puts "I still love you."
end
