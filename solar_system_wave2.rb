#Create a Planet class with a name attribute.
#You should be able to instantiate a new Planet object with an associated name.

#Get creative! Give each instance of Planet at least five attributes. These could be diameters, mass, moons... whatever!
# Allow these attributes to be set using a hash in initialize.
# You should be able to create many different planets with different properties, like Mercury, Venus, Earth, Mars, Jupiter, etc.

      # add @wheels array
require_relative 'planets'


class SolarSystem
  attr_accessor :planets

  def initialize (all_planets_list)
    @planets = all_planets_list
  end

  def add_to_planet_list(planet)
    @planets << planet
    puts @planets
  end

  def print_props
    @planets.each_with_index do |planet, i|
      puts "#{ i+1 }) " + planet.print_props.to_s
    end
    #or if you don't care about having it indexed
    # @planets.each do |planet|
    #   puts planet.print_props
    # end
  end
  puts " "
end


saturn = Planet.new("Saturn", "blue", "gaseous", 3, 6, 32, 54000)
mars = Planet.new("Mars", "red", "solid", 2, 2, 0, 4000)
jupiter = Planet.new("Jupiter", "gaseous", "solid", 4, 1, 6700000, 650000)
venus = Planet.new("Venus", "brown", "solid", 6, 2, 67, 8500000000)
earth =  Planet.new("Earth", "blue & green", "solid", 1, 0, 34, 3200000)
mercury = Planet.new("Mercury", "blue & green", "solid", 1, 2, 34, 3200000)
neptune = Planet.new("Neptune", "blue & green", "solid", 1, 24, 34, 3200000)

# Add list of planets to planets array
all_planets = [saturn, mars, jupiter, venus, earth, mercury, neptune]

s = SolarSystem.new(all_planets)   #Create solar system

# Add one planet to existing planet list
pluto = Planet.new("Pluto", "orange & red", "solid", 26, 0, 23000, 98000000)
s.add_to_planet_list(pluto)


puts s.print_props

# Ensure that the each planet has a @distance_from_the_sun attribute. Using this data, add a method to determine the distance from any other planet (assuming planets are in a straight line from the sun)
