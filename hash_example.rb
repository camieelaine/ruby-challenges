# Define a hash with key, value pairs using strings for keys

hash_key_string = { "name" => "Alice", "email" => "alice@gmail.com", "phone" => "123-544-1234" }

puts "Name: " + hash_key_string["name"]

puts "Email: " + hash_key_string["email"]

puts "Phone: " + hash_key_string["phone"]

puts "\n"

# Define a hash with symbols for keys

hash_key_symbol_1 = { :name => "Mike", :email => "mike@gmail.com", :phone => "123-545-5678" }

puts "Name: " + hash_key_symbol_1[:name]

puts "Email: " + hash_key_symbol_1[:email]

puts "Phone: " + hash_key_symbol_1[:phone]

puts "\n"

# Define a hash to not use => to assign values

hash_key_symbol_2 = { name: "Kyra", email: "kyra@gmail.com", phone: "123-546-9012" }

puts "Name: " + hash_key_symbol_2[:name]

puts "Email: " + hash_key_symbol_2[:email]

puts "Phone: " + hash_key_symbol_2[:phone] 