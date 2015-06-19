# Create and set the weather variable 
weather = 'sunny'
# Case statement for weather and what to wear
case weather
when 'sunny' # when it is sunny
	puts "Put on that red, sundress and show your toes!"
when 'cloudy' #when it is cloudy
	puts "Sweater weather, today."
when 'foggy'
	puts "Bring a scarf."
when 'rainy'
	puts "Don't forget your umbrella."
when 'snowy'
	puts "Put on those hat and mittens."
when 'windy'
	puts "It's a pants kind of day ... "
else
	puts "Pack extra clothes so you are prepared for any weather."
end