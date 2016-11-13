#pseudocode

#declare GuessWord clss
#declare answer
#declare guessed word which shows the user like '___c__'
#declare guess count
#define max guess num
#define is_answered

#initialize
#input:a word
#answer = input
#get the length of input
#guessed word = the number of '_'
#guess count = 0
#is_answered = false


#check_char method
#input:charactor
#step:
#increment guess count
#check if the charactor is in the answer
#if there is, get the index and swap the value in the guessed word and the charactor('____' ->'__c_')
  #if the guessed word == answer
  # is_answered == true
#if not,  return the guess word like '____'
#if guess count == max guess num

class GuessWord

  attr_reader :is_answered, :max_guess_num, :answer, :guessed_word, :guess_cnt

  def initialize(word)
    @answer = word
    @guessed_word = ''
    @answer.length.times do
      @guessed_word += '_'
    end
    @guess_cnt = 0
    @max_guess_num = @answer.length * 2
    @is_answered = false
  end

  def check_char(char)
    @guess_cnt += 1
    if @answer.include? char
      indices_char = get_indices(@answer,char)
      indices_char.each do |index|
        @guessed_word[index.to_i] = char
      end
      if @guessed_word == @answer
        @is_answered = true
      end
        return true
    else
      return false
    end
  end

  def get_indices(word, char)
    indices =[]
    cnt =0
    word.each_char do |char_in_word|
      if char_in_word == char
        indices << cnt
      end
      cnt +=1
    end
    p indices
    return indices
  end

end

# puts "Welcom to Word Guess Game!"
# puts "Tell me a secret word! (lower case)"
# game = GuessWord.new(gets.chomp.downcase)
# p game
# while true

#   #user guess
#   puts "Tell me one charactor in the secret word!: #{game.guessed_word}"
#   input = gets.chomp.downcase

#   #error handling
#   if input.length > 1
#     puts "Please tell me ONE charactor!!"
#     next
#   end

#   #exam the char is in the word
#   if game.check_char(input)
#     puts "Yeah! Nice one. The charactor is in the secret word!!"
#   else
#     puts "No, it's not in the secret word"
#   end
#     puts "You can guess #{game.max_guess_num-game.guess_cnt} times more!"

#   #answered
#   if game.is_answered
#     puts "Congrats! Yes, the answer is #{game.answer}!!"
#     break
#   end

#   #failed
#   if game.guess_cnt == game.max_guess_num
#     puts "Boo!! It's limited time. The answer is #{game.answer}."
#     break
#   end

# end
















