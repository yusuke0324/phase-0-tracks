# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Is used for loading files using the relative path. You do not have to add the extension
#name for the file if it's in the same project folder
#

require_relative 'state_data'

class VirusPredictor

  #initializing the data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #prediciting the deaths, and the spread of death for the population and state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private


  #calculating the number of deaths and prints the results
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      # number_of_deaths = (@population * 0.4).floor
      cal_number_of_deaths(0.4)
    elsif @population_density >= 150
      # number_of_deaths = (@population * 0.3).floor
      cal_number_of_deaths(0.3)
    elsif @population_density >= 100
      # number_of_deaths = (@population * 0.2).floor
      cal_number_of_deaths(0.2)
    elsif @population_density >= 50
      # number_of_deaths = (@population * 0.1).floor
      cal_number_of_deaths(0.1)
    else
      cal_number_of_deaths(0.05)
      # number_of_deaths = (@population * 0.05).floor
    end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def cal_number_of_deaths(persent)
    number_of_deaths = (@population * persent).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  #the spread of the virus in months based on the population_density, then will print how fast it will spread
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

def all_state(states)
  states.each{|state, population|
    projection = VirusPredictor.new(state,population[:population_density], population[:population])
    projection.virus_effects
  }
end

all_state(STATE_DATA)

#=======================================================================
# Reflection Section​


# What are the differences between the two different hash syntaxes shown in the state_data file?
  #Using hash rocket (=>) is an old way to set values to kyes. The other way is simpler way to set vlues to keys in hash. Especially, keys will be symbols if we use ':' after key.
# What does require_relative do? How is it different from require?
  #require_relative defines file path (relative path) to load other files.
  #require is an old way to do this and we need specific syntax to load other files not located at current directory.
# What are some ways to iterate through a hash?
  #Hash has each method like hash.each do |key, value|
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #virus_effects calls other method with several augments which are instance variables. However, the instance variables can be accessed from the called method in virus_effects, which mean the called two methods don't need to get the augments.
# What concept did you most solidify in this challenge?
  #It's about DRY coding. In stead of hard coding, programmer should consider efficent code like DRY.