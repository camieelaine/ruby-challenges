# Dog Class
class Dog
	def set_name=(dog_name)
		@name = dog_name
	end

	def get_name
		return @name		
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

	def set_type=(dog_type)
		@dog_type = dog_type
	end

	def get_type
		return @dog_type
	end

	def set_color=(dog_color)
		@dog_color = dog_color
	end

	def get_color
		return @dog_color
	end

end

#new method out of box with Ruby - instaniates a new instance of the Dog class (this is about my Ferret Fredo)
my_dog= Dog.new
# call set_name method to give my dog a name - this is a setter method. 
# Pass it the argument Helli
my_dog.set_name="Helli"
# Get the name of the dog and set it to the my_dog_name variable.
# This is a getter method - it is going to retrieve information about my dog.
my_dog_name = my_dog.get_name
# Get the name of the owner and set it to the my_dog_owner variable.
my_dog.set_owner="Camie"
my_dog_owner = my_dog.get_owner
# Get the type of dog and set it to the my_dog_type variable.
my_dog.set_type = "Retriever"
my_dog_type = my_dog.get_type
# Get the color of the dog and set it to the my_dog_color variable.
my_dog.set_color = "Yellow"
my_dog_color = my_dog.get_color

# String interpolation
puts "Hi, I'm #{my_dog_owner}. I am the owner of a #{my_dog_color} #{my_dog_type}, named, #{my_dog_name}"

puts my_dog.inspect