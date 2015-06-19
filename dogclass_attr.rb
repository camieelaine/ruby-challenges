# Dog Class
class Dog
	# Get and set the dog name, owner_name, dog_type, and dog_color using attr_accessor
	attr_accessor :name, :owner_name, :dog_type, :dog_color
	
end

# Instaniate a new instance of the Dog class 
my_dog= Dog.new
# Get the name of the dog and pass it the argument Helli
my_dog.name="Helli"
# Get the name of the dog and set it to the my_dog_name variable.
# Set the dog name
my_dog_name = my_dog.name
# Get the name of the owner and set it to the my_dog_owner variable.
my_dog.owner_name="Camie"
my_dog_owner = my_dog.owner_name
# Get the type of dog and set it to the my_dog_type variable.
my_dog.dog_type = "Retriever"
my_dog_type = my_dog.dog_type
# Get the color of the dog and set it to the my_dog_color variable.
my_dog.dog_color = "Yellow"
my_dog_color = my_dog.dog_color

# String interpolation
puts "Hi, I'm #{my_dog_owner}. I am the owner of a #{my_dog_color} #{my_dog_type}, named, #{my_dog_name}."

#puts my_dog.inspect