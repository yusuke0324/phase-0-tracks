puts "what's the hamster's name?"
name = gets.chomp
puts "what's the hamster's volume level? (1-10)"
volume = gets.chomp.to_f
puts "what's the hamster's fur color?"
color = gets.chomp
puts "whether the hamster is a good candidate for adoption"
input = gets.chomp
if input == "yes"
  good = true
else
  good = false
end
puts "Estimated age?"
input = gets.chomp
if input.empty?
  number = nil
else
  number = input.to_i
end

puts "hamster name: #{name}"
puts "hamster volume: #{volume}"
puts "hamster color: #{color}"
puts "candidate for adoption: #{good}"
puts "Estimated age: #{number}"
