# Virus Predictor

# I worked on this challenge [with: Kathryn Garbacz ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# allows you to link files in Ruby
# Require_relative lets you set a path from the current file

require_relative 'state_data'

class VirusPredictor
  #sets instance variables for the current instance for state of orgin, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #makes calls to the other methods with the instance variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #calculates number of deaths based on population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    number_of_deaths = if @population_density >= 200
                          (@population * 0.4).floor
                       elsif @population_density >= 150
                          (@population * 0.3).floor
                      elsif @population_density >= 100
                          (@population * 0.2).floor
                      elsif @population_density >= 50
                          (@population * 0.1).floor
                      else
                          (@population * 0.05).floor
    end
    
    # number_of_deaths =   (@population_density >= 200 ? (@poplutation * 0.4).floor :
    #   @population_density >= 150 ? (@population * 0.3).floor :
    #   @population_density >= 100 ? (@population * 0.2).floor :
    #   @population_density >= 50 ? (@population * 0.1).floor :
    #   (@population_density * 0.5).floor)
  

#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #calculates how long it will take to spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

    speed = 0.0
    
    speed += if @population_density >= 200
        0.5
    elsif @population_density >= 150
        1
    elsif @population_density >= 100
        1.5
    elsif @population_density >= 50
        2
    else
      2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def all_states(states)
    states.each {|state, value|
      current_state = VirusPredictor.new(state, value[:population_density], value[:population] )
     current_state.virus_effects
      }
end
all_states(STATE_DATA)

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  The first hash uses Strings as a key and to do so assigns them with the hash rocket (=>).
  The sub-hashes have symbols as keys.

What does require_relative do? How is it different from require?
  require_relative pulls data from separate files.  It differs from require as relative can be
  used to set relative paths to files outside of the current directory.

What are some ways to iterate through a hash?
  Use each and supply both a key and a value so you can be specific as to what you want to go through.
  This is helpful with sub-hashes.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  They seemed redundant. Especially if the methods that virus_effects is calling call them as well.

What concept did you most solidify in this challenge?
  Hash iteration and longer/larger conditionals.

=end

