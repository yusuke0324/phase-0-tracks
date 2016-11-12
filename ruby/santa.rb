class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking << name
  end

  def about
    puts "age:#{@age}"
    puts "gender:#{@gender}"
    puts "ethnicity:#{@ethnicity}"
    puts "reindeer_ranking:#{@reindeer_ranking}"
  end

end

gender_list = ["male","female","male","male","female","female","N/A"]
ethnicity_list = ["Japanese", "White","Black", "Black","Latino","African", "Brazilian"]

100.times do |i|
  santa = Santa.new(gender_list.sample, ethnicity_list.sample)
  santa.about
end












