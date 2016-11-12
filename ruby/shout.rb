# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happilly(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("yes")
# p Shout.yelling_happilly("yes")


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happilly(words)
    words + "!!!" + " :)"
  end
end

class Human
  include Shout
end


class Alien
  include Shout
end

alien = Alien.new
p alien.yell_angrily("fkldr;::*")
p alien.yelling_happilly("fkldr;::*")


human = Human.new
p human.yell_angrily("yes")
p human.yelling_happilly("yes")





