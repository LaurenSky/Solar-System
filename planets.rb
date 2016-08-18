#Create a Planet class with a name attribute.
#You should be able to instantiate a new Planet object with an associated name.

#Get creative! Give each instance of Planet at least five attributes. These could be diameters, mass, moons... whatever!
# Allow these attributes to be set using a hash in initialize.
# You should be able to create many different planets with different properties, like Mercury, Venus, Earth, Mars, Jupiter, etc.
      # 2.3.1 :001 > saturn = Planet.new("Saturn", "blue", "gas", 3, 6, 32, 54000)
      # => #<Planet:0x007feda40232f0 @name="Saturn", @color="blue", @state="gas",       @moons=3, @rings=6, @solar_roation=nil, @distance_from_the_sun=54000>
      # 2.3.1 :002 > mars = Planet.new("Mars", "red", "solid", 2, 0, 26, 4000)
      # => #<Planet:0x007feda40329d0 @name="Mars", @color="red", @state="solid", @moons=2,      @rings=0, @solar_roation=nil, @distance_from_the_sun=4000>


class Planet
  attr_accessor :name, :color, :state, :moons, :rings, :solar_rotation, :distance_from_the_sun

  def initialize (name, color, state, moons, rings, solar_rotation, distance_from_the_sun)
    @name = name
    @color = color
    @state = state
    @moons = moons
    @rings = rings
    @solar_rotation = solar_rotation
    @distance_from_the_sun = distance_from_the_sun

  end

  def print_props
    "#{ @name }: The planet #{ @name } is the #{ @color } and is in the #{ @state } state. It has #{ @moons } moon(s) and #{ @rings } ring(s). And, has a #{ @solar_rotation } kg/s^2 solar rate of rotation and is #{ @distance_from_the_sun } km from the sun."
  end

end






# Write a program that asks for user input to query the planets:
# First, ask the user to select a planet they'd like to learn about.
# Present the user with a list of planets from which they can choose. Something like:
# 1. Mercury, 2. Venus, 3. Earth, 4. Secret Earth, 5. Mars, 6. Jupiter, ... 13. Exit
# Provide the user with well formatted information about the planet (diameter, mass, number of moons, primary export, etc.)
# Then ask the user for another planet.
