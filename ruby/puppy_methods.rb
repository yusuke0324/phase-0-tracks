#  1 - Add driver -instance of Puppy obeying commands
class Puppy
   attr_accessor :fetch
  def initialize
    puts "Initializing new puppy instance ..."
  end
  def ball
      puts "Puppy fetch ball !"
  end
  def speak(times_talk)
    times_talk.times  do 
      puts "Woof!"
    end
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(human_years)
    years_old = human_years * 7
    return years_old
  end
  def sit
    puts "good dog - you are sitting still!  here is a doggy treat"
  end
end
try_it = Puppy.new 
 
try_it.speak(5)
try_it.ball
try_it.roll_over
puts "our puppy is really #{try_it.dog_years(2)} years old"
try_it.sit


#initialize is called when the instance was generated.
#If the name of the initialize method is misspelled, the method doesn't run when the instance was generated.

class Turtle
  attr_accessor :size
  def initialize
    # puts "generated instance!"
  end

  def mysize
    @size = "large"
    puts "size is called"
  end

  def scare
    puts "afraid of height!!"
  end

end

instance_array = []

50.times do |number|
  instance_array << Turtle.new
end

instance_array.each do |instance|
  instance.mysize
  instance.scare
end




# instance_array[0].size

# turtle_size = Turtle.size
# puts "Our size turtle is #{turtle_size}"
# p instance_array

















