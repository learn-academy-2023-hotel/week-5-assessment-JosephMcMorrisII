# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Using Ruby write the code that would count the votes of each type of taco and return the total of each type of taco.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # Creates a new has that has a default value of 0. (If you access a key that doesn't exist in the has it will return 0.)
  # reduce - iterates of the taco.votes array accumulating the results in the totals hash
  result[vote.downcase] += 1
  # Coverts the taco type to lower case to ensure case-insensitive counting.
  # increments the count of corresponding taco type in the totals hash
  result
  # has is returned at the end of each iteration
end

p totals
# prints the total by running the hash
# {"fish taco"=>9, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}