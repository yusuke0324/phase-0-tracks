# define a method that takes a string
#   define a vowel list [a,e,i,o,u]
#   split the parameter by a whitespace
#   reverse the splited list
#   split the reversed list by each charactor
#   loop each charactor
#     if the chara is included in the vowel
#       put the next vowel from the list
#     else
#       put the next alphabet
#   end
#   join
# end the method

#Main
def get_alias(full_name)
  #"First Last" =>"Last First"
  swapped_name = full_name.split(' ').reverse.join(' ')
  swapped_name.chars.map!{|char| next_char(char)}.join
end


def next_char(char)
  lower_vowels = "aeioua"
  upper_vowels = "AEIOUA"
  lower_alphabet = "bcdfghjklmnpqrstvwxyz"
  upper_alphabet = "BCDFGHJKLMNPQRSTVWXYZ"
  if char == " "
    return char
  elsif lower_vowels.include?(char)
    return next_char_in_string(char,lower_vowels)

  elsif upper_vowels.include?(char)
    return next_char_in_string(char,upper_vowels)

  elsif lower_alphabet.include?(char)
    return next_char_in_string(char,lower_alphabet)

  elsif upper_alphabet.include?(char)
    return next_char_in_string(char,upper_alphabet)
  else
    return char
  end
end

#return the next charactor in the string
def next_char_in_string(char,string)
  target_index = string.index(char).next
  return string[target_index]
end

# p get_alias("Felicia Torres")

#User Interface
names =[]
while true
  puts "Please input full name (or 'quit')"
  full_name = gets.chomp
  break if full_name == 'quit'
  name_pair = {real_name: full_name, fake_name: get_alias(full_name)}
  names << name_pair
end

#show all of the inputted name
names.each do |name_pair|
  puts "#{name_pair[:fake_name]} is actually #{name_pair[:real_name]}"
end




