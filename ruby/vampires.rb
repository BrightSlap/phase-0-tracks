puts "How many employees will be interviewed?"
i=gets.chomp.to_i;
a=0;

while a<i do
	puts "What is your name?"
	name=gets.chomp.downcase;
	
	puts "How old are you?"
	age=gets.chomp.to_i;
	puts "What year were you born?"
	birth=gets.chomp.to_i;
	year=2016;
	Age=year-birth;
	if Age == age
		correct_age = true;
	else
		correct_age = false;	
	end
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic=gets.chomp.downcase;
	if garlic != "yes"
		likes_garlic = false;
	else
	likes_garlic = true;
	end
	
	puts "Would you like to enroll in the company's health insurance?"
	insurance=gets.chomp.downcase;
	if insurance != "yes"
		wants_insurance = false;
	else
		wants_insurance = true;
	end

	puts "Please list up to 10 allergies."
	allergy=gets.chomp.downcase
	allergy_count = 1;
	until allergy_count == 10 || allergy == "none" 
		if allergy == "sunshine"
			puts "Probably a vampire."
			break
		end
		allergy = gets.chomp.downcase;
		allergy_count +=1;
	end

	if allergy != "sunshine"
		if name == "drake cula" || name == "tu fang"
			puts "Definitely a vampire."
		elsif correct_age && (likes_garlic || wants_insurance) == true;
			puts "Probably not a vampire."
		elsif correct_age && (likes_garlic || wants_insurance) == false;
			puts "Probably a vampire."
		elsif correct_age == false && likes_garlic == false && wants_insurance == false;
			puts "Almost certainly a vampire."
		else
			puts "Results inconclusive."
		end		
	end
	a +=1;
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all Just Be Friends."