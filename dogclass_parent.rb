# Pet Class - Parent class
class Pet
	def set_name=(pet_name)
		@name = pet_name
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
	def set_type=(pet_type)
		@pet_type = pet_type
	end
	def get_type
		return @pet_type
	end
	def set_color=(pet_color)
		@pet_color = pet_color
	end
	def get_color
		return @pet_color
	end
end
# Dog Class - child class
class Dog < Pet
end
# Cat Class - child class
class Cat < Pet
end
#new method out of box with Ruby - instaniates a new instance of the Dog and Cat child classes
my_dog = Dog.new
my_cat = Cat.new
# call set_name method to give my dog a name - this is a setter method. # Pass it the argument Smokey
my_dog.set_name="Helli"
my_cat.set_name="Smokey"
# Get the name of the dog and set it to the my_dog_name variable.# This is a getter method - it is going to retrieve information about my dog.
my_dog_name = my_dog.get_name
my_cat_name = my_cat.get_name
# Get the name of the owner and set it to the my_dog_owner variable.
my_dog.set_owner="Camie"
my_dog_owner = my_dog.get_owner
my_cat.set_owner="Camie"
my_cat_owner = my_cat.get_owner
# Get the type of dog and set it to the my_dog_type variable.
my_dog.set_type = "Retriever"
my_dog_type = my_dog.get_type
my_cat.set_type = "Siamese"
my_cat_type = my_cat.get_type
# Get the color of the dog and set it to the my_dog_color variable.
my_dog.set_color = "Yellow"
my_dog_color = my_dog.get_color
my_cat.set_color = "Black and white"
my_cat_color = my_cat.get_color
# String interpolation
puts "Hi, I'm #{my_dog_owner}. I am the owner of a #{my_dog_color} #{my_dog_type}, named, #{my_dog_name}."
# String interpolation
puts "Hi, I'm #{my_cat_owner}. I am the owner of a #{my_cat_color} #{my_cat_type}, named, #{my_cat_name}."
puts my_dog.inspect
puts my_cat.inspect