puts "How many employees will be processed?"
num = gets.chomp.to_i
num.downto(1) do
  puts "What is your name?"
  name = gets.chomp


  puts "How old are you? What yere were your born?"
  age = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? "
  gets.chop == "yes" ? like_garlic = true : like_garlic = false

  puts " Would you like to enroll in the company’s health insurance?"
  gets.chop == "yes" ? like_Insurance = true : like_Insurance = false

  #Ask allergies till pressed "done"
  is_done = false
  while true
    puts "What allergies do you have?"
    allergy = gets.chomp
    if allergy == "done"
      break
    elsif allergy == "sunshine"
      break
    end
  end
  # puts"name: #{name}"
  # puts"age: #{age}"
  # puts"like_garlic: #{like_garlic}"
  # puts"like_Insurance: #{like_Insurance}"

  if allergy =="sunshine" || name == "Drake Cula" || name =="Tu Fang"
    puts "Definitely a vampire."
  elsif age<65 && like_garlic && like_Insurance
    puts "Probably not a vampire."
  elsif age>100 && (!like_garlic || !like_Insurance)
    puts "Probably a vampire."
  elsif age >100 && !like_garlic && !like_Insurance
    puts "Almost certainly a vampire."
  else
  puts "Results inconclusive."
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
