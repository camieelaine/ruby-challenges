
class Ferret
	def set_name=(ferret_name)
		@name = ferret_name
	end

	def get_name
		return @name		
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		retun @owner_name
	end

	def squeal
		return "squeeee"
	end
end

#new method out of box with Ruby - instaniates a new instance of the Ferret class (this is about my Ferret Fredo)
my_ferret = Ferret.new
# call set_name method to give Ferret a name - this is a setter method and pass it the argument Fredo
my_ferret.set_name="Fredo"
# Get the name of the ferret and set it to the my_ferret name variable, ferret_name
# This is a getter method - it is going to retrieve information about my ferret
my_ferret_name = my_ferret.get_name
# String interpolation
puts "#{my_ferret_name} says #{my_ferret.squeal}!"
