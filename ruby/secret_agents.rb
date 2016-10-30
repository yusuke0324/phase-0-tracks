# pseudocode

# encrypt with input
# define result letters variable
# make a loop with input letters list. Manipulate each letter in the loop.
#   if the value is "z"
#    put "a" to result letters
#   else
#    get next value of the letter using next method
#    put the next value to result letters
# end loop
# return the result letters

# puts decrypt(encrypt("swordfish"))

# the input "swordfish" was encrypted first then the encrypted value was augments for decrypt. then the nested method returned decrypted encrypted input value

# decryp with input
# define alphabet variable "abcdefghijklmnopqrstuvwxyz"
# define result letters variable
# make a loop with the input list.
#   get the index of the value in the input from the alphabet variable.
#   get the letter with the (index -1) from the alphabet variable.
#   put the alphabet to the resut letters variable
# end loop
#return the result letters

def encrypt(password)
  enrypted = ""
  i = 0
  while i < password.length do
  # password.length.downto(0) do |i|
    if password[i] == "z"
      enrypted += "a"
    else
      enrypted += password[i].next
    end
    i += 1
  end
  return enrypted
end


def decrypt(encrypted)
  i = 0
  decrypted = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while i < encrypted.length
    decrypted_index = alphabet.index(encrypted[i]) -1
    decrypted += alphabet[decrypted_index]
    i +=1
  end
  return decrypted
end

while true do
  puts "Hello agent! Would you like to [D]decrypt or [E]encrypt a password?"

  operation = gets.chomp

  if operation.downcase == "d"
    puts "what's your encryoted password?"
    puts "Decrypted password is:" + decrypt(gets.chomp)
    break
  elsif operation.downcase == "e"
    puts "what's your password?"
    puts "Encrypted password is:" + encrypt(gets.chomp)
    break
  end
end
#Test
# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

