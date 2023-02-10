# 2_objects

######## An object is an instance of a class

######## To illustrate first have to explain how to create our own classes
	# We can create our own classes to contains code that can be used multiple times
	# In OOP a class represents something in the 'real world', physical or virtual
		# for example a person or a bank account respectively
		# this is called 'abstraction'
	# To define a class must use keyword `class` then the name using camel case and 
		# then keyword `end` to indicate where it ends


		# a class can be empty or have inside of it different data (attributes, functions, etc)
		
		# empty example
		class Person
		end

		# data example
		class Pet
			def bark
				puts "woof"
			end
		end

		# But we cant access to the information inside by the name of class itself

		# puts Pet.say_hello() # => throws error

######## Creating a class object

# First you have to create a class object (create an instance of the class)
	# to this we create a variable that will contain the new object, created by keyword 'new' after class name

	my_pet = Pet.new

	# now can use all properties inside of class

	my_pet.bark()
