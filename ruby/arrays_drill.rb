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