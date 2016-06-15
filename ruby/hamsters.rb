puts "What is the Hamster's name?"
Name = gets.chomp
puts "From a Volume level of 1 to 10, how loud is the Hamster?"
Volume=gets.chomp.to_i
puts "What is the color of the Hamster's fur?"
Fur_color = gets.chomp
puts "Is the Hamster a good candidate for adoption?"
Adoption = gets.chomp
puts "Estimated age of Hamster?"
Age=gets.chomp.to_i
if Age.empty?
  Age = nil
  else Age=Age
end

puts "This Hamster's name is #{Name}."
puts "The Volume level of #{Name} is #{Volume}."
puts "#{Name}'s fur color is #{Fur_color}."
puts "Good Candidate for Adoption: #{Adoption}."
puts "The estimated age of #{Name} is #{Age}."