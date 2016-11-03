# declare a hash for storing the data
# ask users to inpute the following data
# name, age, number or children
# convert each data type and store them into the hash
# print the hash
# ask the user which key's value s/he want to update
# if user input "none" skip it otherwise, get the input key's value and ask what value s/he want to change to
# update the value
# print the hash

application_info ={}

puts "Please fill out the application"
puts "what's your name?"
application_info[:name] = gets.chomp
puts "how old are you?"
application_info[:age] = gets.chomp.to_i
puts "how many child do you have?"
application_info[:child_num] = gets.chomp.to_i
p application_info
puts "Which information do you want to change? or input none"
target_key = gets.chomp
exit if target_key == "none"
puts "what do you want to change to?"
application_info[target_key.to_sym] =gets.chomp
p application_info