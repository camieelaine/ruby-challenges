# Numerology App
#Require sinatra
require 'sinatra'
# Determine birthpath number
def get_birth_path_num(birthdate)
	# Array to access each number in the birthdate, convert to an integer, and add together
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[3].to_i + birthdate[4].to_i+ birthdate[5].to_i + birthdate[6].to_i 
	+ birthdate[7].to_i
	# Convert the number back to a string. Add them together.
	number = number.to_s
	number = number[0].to_i + number[1].to_i 
	# Check single-digit birth path number
	#puts number 
	# If the number is greater than 9, reduce it again by adding the numbers together
	if number > 9
		number = number[0].to_i + number[1].to_i
	end
	# Return birthpath number
	return number
	# Display numerology number.
	#puts "Your numerology number is #{number}."
end

def get_message(birth_path_num)
	# Case statement to display the meaning.
	case birth_path_num
	when 1
		message = "Your numerology number is #{birth_path_num}.\nOne is the leader. The number one indicates the ability 
		to stand alone, and is a strong vibration. Ruled by the Sun. "
	when 2
		message = "Your numerology number is #{birth_path_num}.\nThis is the mediator and peace-lover. The number two indicates 
		the desire for harmony. It is a gentle, considerate, and sensitive vibration. 
		Ruled by the Moon."
	when 3
		message = "Your numerology number is #{birth_path_num}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, 
		positive, and optimistic, Three’s enjoy life and have a good sense of humor. 
		Ruled by Jupiter."
	when 4
		puts "Your numerology number is #{birth_path_num}.\nThis is the worker. Practical, with a love of detail, Fours are 
		trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		message = "Your numerology number is #{birth_path_num}.\nThis is the freedom lover. The number five is an intellectual vibration. 
		These are ‘idea’ people with a love of variety and the ability to adapt to most 
		situations. Ruled by Mercury."
	when 6
		message = "This is the peace lover. The number six is a loving, stable, and harmonious 
		vibration. Ruled by Venus."
	when 7
		message = "This is the deep thinker. The number seven is a spiritual vibration. 
		These people are not very attached to material things, are introspective, and 
		generally quiet. Ruled by Neptune."
	when 8
		message = "This is the manager. Number Eight is a strong, successful, and material 
		vibration. Ruled by Saturn."
	when 9
		message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, 
		and sympathetic vibration. Ruled by Mars."
	else 
		message = "Whoops. Something is not quite right."
	end


end
#Use URL parameter birthdate to display correct message. Pass birthdate in URL as a parameter like http://localhost:4567/01011945
get '/:birthdate' do
	birthdate = params[:birthdate]
	birth_path_num = get_birth_path_num(birthdate)
	message = get_message(birth_path_num)
	"#{message}"
end

# Determine birthdate
# Ask the user for their birthdate.
	#puts "What is your birthday? Format: MMDDYYYY"
	#birthdate = gets.to_i
# Get birthpath number using the method and assign to a variable birthpath_number
	#birthpath_number = determine_birthpath_number(birthdate)

# Get the correct display message from method and assign to variable message
	#message = determine_display_message(birthpath_number)

# Display number and message
	#puts "Your numerology number is #{birthpath_number}. " 
	#puts message