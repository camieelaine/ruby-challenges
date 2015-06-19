# Hash with key, value pairs using strings for keys
#my_hash = { “key1” => “value1”, “key2” => “value2”}
hash_key_string = {"name" => "Camie", "email" => "camie@gmail.com", "age" => "42", "gender" => "F" }
puts "Name: " + hash_key_string["name"] 
puts "Email: " + hash_key_string["email"] 
puts "Age: " + hash_key_string["age"] 
puts "Gender: " + hash_key_string["gender"] 

# Hash with symbols for keys, not strings
hash_key_symbol = { :name => "Camie", :email => "camie@gmail.com", :age => "42", :gender => "F" }
puts "Name: " + hash_key_symbol[:name] 
puts "Email: " + hash_key_symbol[:email] 
puts "Age: " + hash_key_symbol[:age] 
puts "Gender: " + hash_key_symbol[:gender] 

# Hash with symbols for keys, not strings, and without => to assign values
hash_key_simple = { name: "Camie", email: "camie@gmail.com", age: "42", gender: "F" }
puts "Name: " + hash_key_simple[:name] 
puts "Email: " + hash_key_simple[:email] 
puts "Age: " + hash_key_simple[:age] 
puts "Gender: " + hash_key_simple[:gender] 