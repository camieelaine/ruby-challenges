# Greeting method
# Method to return current hour
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
# Method to greet anyone
def greeting
	name = determine_name
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end

	puts "Good #{time}, #{name.capitalize}!"
end

# Method to determine name to use in greeting
def determine_name

	# Ask for name
	puts "What is your name?"
	# Get name
	gets
end

# Call greeting method
greeting