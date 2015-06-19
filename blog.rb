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
		# Get current time when post was created
		current_time = Time.now

		# Name of the content creator
		puts "Enter your name: "
		blog_author = gets.chomp

		# Title of blog post
		puts "Post title: "
		blog_title=gets.chomp

		# Content of blog post
		puts "Create a post: "
		blog_content = gets.chomp

		# Create a blog post
		blogpost=Blog_post.new(current_time.to_s, blog_title, blog_author, blog_content)
	end

	# Store new blog post in hash structure
	def store_blog_post(time, author, title, content)
		value = []
		value[0] = title
		value[1] = author
		value[2] = content
		get_blog_posts.store(time, value)	
	end

	# Print blog time, author, title, and content
	def publish(blog_posts)
		blog_posts.each do |key, value|
		puts ("\n Title: #{value[0]} \n Created at: #{key} \n Created by: #{value[1]} \n Post: #{value[2]} \n }")
	end
	end
end

# Define a class Blog post

class Blog_post

	# Define initialize method for blog post and assign values time, title, content and author to instance variables
	def initialize(time, title, author, content)
		@current_time = time
		@title = title
		@author = author
		@content = content
	end

	# Get the value of time of blog creation, blog title, blog content, blog author
	attr_accessor :current_time, :title, :author, :content
	
end

# Create an instance of class Blog
this_blog = Blog.new

# Prompt to create a blog
create_blog = true

# Create a loop for creation of multiple blog posts
while (create_blog)

	puts "Would you like to create a new post? Y/N "

	if (gets.chomp.downcase == 'y')
		# Create a new blog_post instance
		blog_post = this_blog.new_blog_post
		# Store new blog post in hash structure
		this_blog.store_blog_post(blog_post.current_time, blog_post.author,blog_post.title, blog_post.content)
	else 
		create_blog = false
	end

end

# Print the blog posts 
# Print Blog title
puts("\nEuropean Vacation Blog \n")

#puts this_blog.get_blog_posts.inspect
this_blog.publish(this_blog.get_blog_posts)

# Print blog posts in ascending order based on creation time
puts "\nBlog posts in ascending order: "
this_blog.publish(this_blog.get_blog_posts.sort.to_h)

# Print blog posts in descending order based on creation time 
puts "\nBlog posts in descending order: "
this_blog.publish(this_blog.get_blog_posts.sort.reverse.to_h)