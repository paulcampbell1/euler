# Lattice paths
# Problem 15
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?
require 'set'
start_time = Time.now

grid_size = 20
paths = Set[]
directions = []
path = ""

direction_counter = 0
counter = 0

#build the list of directions
while direction_counter < grid_size
    directions << "a"
    directions << "b"
    direction_counter += 1
end

total_steps = directions.length

puts "While grid size is #{grid_size}, the list of possible directions is #{directions}, with #{total_steps} steps."

#build a path from the available directions
#take string length, pick random index, push from array and repeat until string length is zero, then check if unique

iterations = 5000000

#do many times to ensure spread of randomness
counter = 0
while counter < iterations
    path_directions = directions.clone
    path = ""
    while path_directions.length > 0
        steps = path_directions.length - 1
        index = rand(0..steps)
        path << path_directions[index]
        path_directions.delete_at(index)
    end
    if paths === path
      break
    else
      paths << path
    end
    counter += 1
    if counter % 10000 == 0
      puts path
    end
end
end_time = Time.now
elapsed_time = end_time - start_time
puts "Outputting after #{elapsed_time} seconds"
puts paths.length
