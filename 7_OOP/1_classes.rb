######## 1_classes.rb

def puts_example(_num)
	puts "\nExample #{_num}\n"
end

#### Basics
	# Since ruby is a oop languaje in a deep level, this have the premise
		# 'everything in ruby is an object'
		# and most of objects 'are an instance' from a Class
		# so every class extentds from `a primary Class`, in fact the type of the primary class `Class` is Class
		# this let to developers manipulate ruby in a very deep level

	# Example:
		# in next cases we see how all the ways end on an class

		puts_example(1)
		puts 1.class # => Integer < Integer is the name of the `parent` class >
		puts Integer.class # => Class < And Class is the `parent` class of Integer >
		puts Class.class # => Class < Heres ends the way, always will return `Class` at this point >
		puts Class.class.class # Class

		# and this happen with all kind of datas, since primitives types to data structures

		puts_example(2)
		puts 2.0.class # => Float
		puts Float.class # => Class

		puts_example(3)
		puts 'word'.class # => String
		puts String.class # => Class

		puts_example(4)
		puts [1,2,3,4].class # => Array
		puts Array.class # => Class

		puts_example(5)
		temp_hash = {a: false}
		puts temp_hash.class # => Hash
		puts Hash.class # => Class

		## To know what kind of operations can perform with a class use the keyword `methods` after the class name
			# example
			# puts Integer.methods


#### Creating an instance of a class (objects)
	# As you can see above most primitive kind of data can be enhanced by put the data in a variable byself
		# in fact most this kind of data have not a keyword (new) to instance an object
		# the only exception is String class

		# Integer (before FixNum)
		num_int = 2

		# Float
		num_float = 2.0

		# boolean (this separate in two class -> TrueClass, FalseClass)
		true_val = true # => TrueClass
		false_val = false # => FalseClass

		# String
		simple_way_string = 'hello world' # => most common way
		complex_way_string = String.new('hello world')

	# Advanced kind of data and own declaration classes can be instanced by keyword `new`
		# in classes provided by ruby is not necessary use keyword `new` but this work to do custom declarations

		# Array
		simple_array = [1,2,3,4]
		custom_array = Array.new(10, 0) # => [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		custom_array_v2 = Array.new(10) { |index| index * 2 } # => [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]  

		# Hash
			## more info: https://ruby-doc.org/3.2.0/Hash.html
		simple_hash = {a: true, b: false}
		custom_hash = Hash.new { |hash, key| hash[key] = 'x' }


#### => Next: objects