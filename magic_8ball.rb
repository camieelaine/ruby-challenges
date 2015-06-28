# Magic 8-Ball App

# Require Ruby Gems
require 'rubygems'

# Require Twilio
require 'twilio-ruby'

# Account SID and Auth Token for Twilio
account_sid = "AC024ca31efb2c83a768fa545cbe4423a3"
auth_token = "34a8c0565ca021cadba3c00d3aa5fac1"

# Create an array of 20 messages for magic 8 ball script to randomly choose from
array_8ball_answers = [
	"It is certain",
	"It is decidedly so",
	"Without a doubt",
	"Yes definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"
	]

# Get random number from 0 to 19 to use it as an index in the array to get the message to be texted
def answer_magic_8ball(message)
	rand_number = Random.new
	rand_number = rand(0 .. 19)
	answer = message[rand_number]
end

# Prompt user to ask a question for the Magic 8 Ball
	puts "What is your question for the Magic 8 Ball?"
	user_question = gets.chomp

# Call method to select random answer
answer = answer_magic_8ball(array_8ball_answers)

# Text Magic 8 Ball answer using Twilio gem methods
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
	:from => "+1 (844) 326-3493",
	:to => "+1 (907) 521-0275",
	:body => "The Magic 8 Ball says: #{answer}."
	)

puts message.to

puts "The Magic 8 Ball says: #{answer}."

#def magic_8ball
	# Tell script it needs nokogiri to work
	#require 'nokogiri'
	# Tell script it needs open-uri, which is a dependency that Nokogiri requires 
	#require 'open-uri'
	# Tell Nokogiri tp go out and open the URL skillcrush.com and get the HTML document, bring it back and save it to the doc vari
	#doc = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers"))
	# Search HTML for different types of elements
	# Found 'components-item' as the clas name used for ingredients in the li element 
	#search = doc.css('li')
	#puts search
#end