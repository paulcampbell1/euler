# Lattice paths
# Problem 15
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?
start_time = Time.now

grid_size = 2
paths = []
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

puts "While grid size is #{grid_size}, the list of possible routes is #{directions}"

#build a path from the available directions
iterations = 10000


while iterations > 0
    path = ""
    path_directions = directions

    while path_directions.length > 0

        steps = path_directions.length
        index = rand(0..steps)

        path << path_directions[index]
        path_directions.delete(index)
    end
    paths << path
end

unique_paths = paths.uniq
puts unique_paths.length
puts unique_paths

#take string length, pick random index, push from array and repeat until string length is zero, then check if unique
