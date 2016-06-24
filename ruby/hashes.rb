# hash name client
# Keys: Name, Age, Marital Status, Number of children, decor theme.
# Values: gets.chomp.to_s/gets.chomp.to_i

client = {}

puts "What is the client's name?"
client[:name] = gets.chomp.to_s

puts "What is the client's age?"
client[:age] = gets.chomp.to_s

puts "what is the client's marital status?"
client[:marital_status] = gets.chomp.to_s

puts "Does the client have children? (y/n)"
client[:children?] = gets.chomp.downcase
if client[:children?] != "y"
	client[:children] = false
else
	client[:children] = true
	puts "How many children does the client have?"
	client[:number_children] = gets.chomp.to_i
end

puts "What decor theme does the client want?"
client[:decor_theme] = gets.chomp.to_s

p client

puts "Is there anything you would like to update?(y/n)"
update = gets.chomp.downcase
if update != "n"
	puts "What "
