# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # example.split(' ')	
  # [fill in any steps here]
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

def groceries(items)
	things = items.split(' ')
	grocery_list = {}
	things.each do |item|
		grocery_list[item] = 0
	end
	grocery_list
end 

def needed(necessity)
	necessity
end

def unnecessary(list, greed)
	list.delete(greed)
end

def how_many(list)
	list.each do |item, quantity|
		puts "How many of #{item} would you like?"
		quantity = gets.chomp.to_i
		list[item] = quantity
	end
end

def display_list(list)
	puts "Here is a list of items to buy:"
	list.each do |item, quantity|
		p "#{item}: #{quantity}"
	end
end


grocery_list = groceries("carrots apples cereal pizza")
p grocery_list
grocery_list[needed("bananas")] = 0
p grocery_list
unnecessary(grocery_list, "apples")
p grocery_list
how_many(grocery_list)
p grocery_list
display_list(grocery_list)


