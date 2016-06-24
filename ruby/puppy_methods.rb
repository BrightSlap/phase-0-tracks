class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    puts "Woof " * x
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(y)
    dog_age = y * 7
    p dog_age
  end

  def high_five
    puts "Trevor gives you a high five!" 
  end

  def initialize
    puts "Initializing puppy method"
  end
end

trevor = Puppy.new
trevor.fetch("ball")
trevor.speak(3)
trevor.roll_over
trevor.dog_years(11)
trevor.high_five

class Cat

  def catnap(x)
    @nap_num = x
    return "I have taken #{x} naps today,"
    
  end

  def push(y)
    @push_num = y
    return "I have pushed #{y} objects off your table, including that ugly mug that you love so much."
    end
  
  def push_num
     @push_num
  end
  
  def nap_num
    @nap_num
  end
  
  def initialize
    p "Initializing cat method"
  end
end

Garfield = []

times = 0
x = 1
y = 1
loop do 
  This_Cat = Cat.new
  x +=2
    y +=1
    if times>25
      x -=3
      y +=3
    end
  This_Cat.push(y)
  This_Cat.catnap(x)
    Garfield << This_Cat
    times +=1
    break if times == 50
end

Garfield.each do |activities|
  p "This is what your cat has done so far: #{activities.catnap(activities.nap_num)} and  #{activities.push(activities.push_num)}"
  
end

