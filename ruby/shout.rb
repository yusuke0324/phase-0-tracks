module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happilly(words)
    words + "!!!" + " :)"
  end
end

p Shout.yell_angrily("yes")
p Shout.yelling_happilly("yes")
