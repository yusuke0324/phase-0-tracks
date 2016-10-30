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

def encrypt(password)
  enrypted = ""
  i = 0
  while i < password.length do
  # password.length.downto(0) do |i|
    if password[i] == "z"
      enrypted += "a"
    else
      # encrypted += password[i].next
    end
    i += 1
  end
  return enrypted
end

puts encrypt("abc")

# decryp with input
# define alphabet variable "abcdefghijklmnopqrstuvwxyz"
# define result letters variable
# make a loop with the input list.
#   get the index of the value in the input from the alphabet variable.
#   get the letter with the (index -1) from the alphabet variable.
#   put the alphabet to the resut letters variable
# end loop
#return the result letters