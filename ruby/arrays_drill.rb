def ocean(para1, para2, para3)
	oceans = [para1, para2, para3]
end

def all_the_things(arr, val1)
	seas=arr << (val1)
	p seas
end


zoo = []
p zoo

zoo << "Polar Bear"
zoo << "Lion"
zoo << "Zebra"
zoo << "Hippo"
zoo << "Penguin"
p zoo

zoo.delete_at(2)
p zoo

zoo.insert(2, "Cheetah")
p zoo

zoo.delete("Polar Bear")
p zoo

zoo.include?("Polar Bear")
puts "#{zoo.include?("Polar Bear")}, there are no Polar Bears in the Zoo."

aquarium = ["Sharks", "Dolphins", "Whales", "Dory"]

animal_park = zoo + aquarium

p animal_park

ocean("Pacific", "Atlantic", "Indian")

all_the_things(["Baltic", "Arctic"], "Mediterranean")

all_the_things(["Baltic", "Arctic", "Mediterranean"], "Dead")

all_the_things(["Baltic", "Arctic", "Mediterranean", "Dead"], "Celtic")