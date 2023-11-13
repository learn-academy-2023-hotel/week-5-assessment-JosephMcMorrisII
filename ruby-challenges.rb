# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

# us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# def ordered_hash(hash)
#     flattened_array = hash.values.flatten
#     sorted_array = flattened_array.sort
#     return sorted_array
# end

# puts ordered_hash(us_states)

# Pseudo code:
# Input: Hash
# Output: One array with all their values at their own index in alphabethical order.
# Create a method that takes in a hash
# Get the values using hash.values and return the new set using flatten
# Alphabetize the new array with .sort


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# class Bike
#     attr_accessor :model, :wheels, :current_speed
#     def initialize(model, wheels = 2)
#       @model = model
#       @wheels = wheels
#       @current_speed = 0
#     end
#     def bike_info
#       "The #{model} bike has #{wheels} wheels and is currently going at #{current_speed} mph."
#     end
#   end

#   my_bike = Bike.new("Trek bike")
#   puts my_bike.bike_info

# Pseudo code:
# Input: Model
# Output: Model , wheels , MPH
# Create a class
# List the attributes you want for the class
# Initialize, set the wheels = to 2
# Write the string iterpolation for the return


# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.


class Bike
    attr_accessor :model, :wheels, :current_speed
    def initialize(model, wheels = 2)
      @model = model
      @wheels = wheels
      @current_speed = 0
    end
    def bike_info
      "The #{model} bike has #{wheels} wheels and is currently going at #{current_speed} mph."
    end
    def pedal_faster(speed)
      @current_speed += speed
    end
    def brake(speed)
      @current_speed = [@current_speed - speed, 0].max
    end
  end

  my_bike = Bike.new("Trek bike")
  puts my_bike.bike_info
  puts my_bike.pedal_faster(10)
  puts my_bike.pedal_faster(18)
  puts my_bike.brake(5)
  puts my_bike.brake(25)

#   The Trek bike bike has 2 wheels and is currently going at 0 mph.
#   10
#   28
#   23
#   0
# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code: 
#  added another method for pedal faster that increases the 'current speed' by whatever is inputed in the parameter
#  added another method for brake decreases 'current speed' by whatever speed is inputed in the parameter