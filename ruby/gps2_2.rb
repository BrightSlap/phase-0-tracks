# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # example.split(' ')	
  # set hash inside
  # 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

# hash = {:key = value}

def groceries
	puts "What items would you like on your list?"
	items = gets.chomp.to_s
	things = items.split(' ')
	grocery_list = {}
	things.each do |item|
		puts "How many #{item} would you like?"
		quantity = gets.chomp.to_i
		grocery_list[item] = quantity
	end
	grocery_list
end 

def needed(list, necessity)
	puts "How many #{necessity} would you like to add to your list?"
	quantity = gets.chomp.to_i
	puts "Added #{quantity} #{necessity} to the list."
	list[necessity] = quantity
end

def unnecessary(list, greed)
	puts "Removed #{greed} from the list."
	list.delete(greed)
end

def update(list)
	p list.keys
	puts "Which item would you like to update the quantity of?"
	item = gets.chomp.to_s
	puts "What would you like to update the quantity to?"
	quantity = gets.chomp.to_i
	list[item] = quantity
end

def display_list(list)
	puts "Here is a list of items to buy:"
	list.each do |item, quantity|
		p "#{item}: #{quantity}"
	end
end


grocery_list = groceries
p grocery_list
needed(grocery_list, "bananas")
p grocery_list
unnecessary(grocery_list, "apples")
p grocery_list
update(grocery_list)
p grocery_list
display_list(grocery_list)


grocery_list = groceries
p grocery_list
unnecessary(grocery_list, "lemonade")
p grocery_list
update(grocery_list)
p grocery_list
display_list(grocery_list)

# 1. Well, I don't really like it. I'm more of a person who jumps right into coding. I do, however understand the value of it.
# It's basically creating a skeleton of the entire program, of what you want it to do and what it should do. This will also limit unnecessary lines of codes.
# And yes, it is something I should really work on knowing how to do. :'|

#2. The tradeoff of using arrays and hashes in this challenge is that while arrays are helpful in creating lists, the objects in the array cannot have a value other than itself.
# Hashes, on the other hand, can have objects that have a different value. However, it cannot turn a string of words into each individual key. That's why it's a necessity to use
# both arrays and hashes for this challenge.

#3. methods explicitly returns the last line of code written in the method definition. Implicity return or using the "return" would return the value in which the method obtains, or is set out to calculate.

#4. Suprisingly, you can pass a lot of things as an argument. Integers, variables, arrays, strings, even hashes.

#5. Since almost anything can be used as an argument for the methods, information can be shared between them if the argument used is an object in which the previous method's value(s) are stored in.

#6. Before I thought it was impossible to have nested methods, however, today I learned that that's not the case. It's totally possible to have defined method while defining a method. It's just that defining a method
# while inside a method being defined, is really hard to do.
