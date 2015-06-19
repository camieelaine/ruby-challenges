# Define class Blog

class Blog

	# Define initialize method for Blog class to create a Hash structure to store blog posts
	def initialize
		@blog_posts = Hash.new{ |hsh, key| hsh[key] = [] }
	end

	# Define a method to retrieve blog posts
	def get_blog_posts
		return @blog_posts
	end

	# Create a new blog post object
	def new_blog_post
		# Get current time when blog post was created
		current_time = Time.now

		# Get user input for name of the author
		puts "Enter your name: "
		blog_author = gets.chomp

		# Get user input for title of blog post
		puts "Enter Blog post title: "
		blog_title=gets.chomp

		# Get user input for content of blog post
		puts "Create a blog post: "
		blog_content = gets.chomp

		# Create a blog post
		user_blogpost=Blog_post.new(current_time.to_s, blog_author, blog_title, blog_content)
	end

	# Store new blog post in hash structure
	def store_blog_post(time, author, title, content)
		value = []
		value[0] = author
		value[1] = title
		value[2] = content
		get_blog_posts.store(time, value)	
	end

	# Print blog time, author, title, and content
	def publish(blog_posts)
		blog_posts.each do |key, value|
		puts ("\n Title: #{value[1]} \n Created at: #{key} \n Created by: #{value[0]} \n Content: #{value[2]} \n }")
	end
	end
end

# Define a class Blog post

class Blog_post

	# Define initialize method for blog post and assign values time, title, content and author to instance variables
	def initialize(time, title, content, author)
		@current_time = time
		@title = title
		@content = content
		@author = author
	end

	# Get the value of time of blog creation, blog title, blog content, blog author
	attr_accessor :current_time, :title, :content, :author
	
end

# Create an instance of class Blog
this_blog = Blog.new

# Prompt the user if would like to create a blog
create_blog = true

# Create a loop for creation of multiple blog posts
while (create_blog)

	puts "Would you like to create a new post? Y/N "

	if (gets.chomp.downcase == 'y')
		# Create a new blog_post instance
		user_blog_post = this_blog.new_blog_post
		# Store new blog post in hash structure
		this_blog.store_blog_post(user_blog_post.current_time, user_blog_post.title, user_blog_post.content, user_blog_post.author)
		#elsif (gets.chomp.downcase == 'n')
		#puts "all done\n"
		create_blog = false
		#puts "Would you like to create a new blog post? Y/N "
	else 
		#puts "I did not understand your answer.\n"
		create_blog = false
	end

end

# Check if there are any blog posts

if (this_blog.get_blog_posts.empty?)
	puts "\nCurrently there are no posts.\n"
	puts this_blog.inspect
else

	# If there are blog posts then print them
	# Print Blog title
	puts("\nBlog \n")

	#puts this_blog.get_blog_posts.inspect
	this_blog.publish(this_blog.get_blog_posts)

	# Print blog posts in ascending order based on creation time
	puts "\nBlog posts in ascending order: "
	this_blog.publish(this_blog.get_blog_posts.sort.to_h)

	# Print blog posts in descending order based on creation time 
	puts "\nBlog posts in descending order: "
	this_blog.publish(this_blog.get_blog_posts.sort.reverse.to_h)

end