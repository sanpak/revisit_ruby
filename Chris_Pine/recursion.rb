
  m = "land"
  o = "water"
  world = [ [o,o,o,o,o,o,o,o,o,o,o],
            [o,o,o,o,m,m,o,o,o,o,m],
            [o,o,o,o,o,o,o,o,m,m,o],
            [o,o,o,m,o,o,o,o,o,m,o],
            [o,o,o,m,o,m,m,o,o,o,o],
            [o,o,o,o,m,m,m,m,o,o,o],
            [o,o,o,m,m,m,m,m,m,m,o],
            [o,o,o,m,m,o,m,m,m,o,o],
            [o,o,o,o,o,o,m,m,o,o,o],
            [o,m,o,o,o,m,o,o,o,o,o],
            [o,o,o,o,o,o,o,o,o,o,m] ]
def continent_size(world,x,y)
  if x > 10 || y > 10 || x < 0 || y < 0
    return 0
  end
    if world[x][y] != "land"
      return 0
    end

    size = 1
    world[x][y] = "counted land"



  size = size + continent_size(world,x-1,y-1)
  size = size + continent_size(world,x-1,y)
  size = size + continent_size(world,x-1,y+1)
  size = size + continent_size(world,x,y+1)
  size = size + continent_size(world,x+1,y+1)
  size = size + continent_size(world,x+1,y)
  size = size + continent_size(world,x+1,y-1)
  size = size + continent_size(world,x,y-1)

  size
end
# puts continent_size(world,0,0)
# p world[10][11] == nil

def sort(some_array)
  recursive_sort(some_array,[])
end

def recursive_sort(unsorted_array,sorted_array)
  swapped = true

  while swapped

    swapped = false
    i = 0
    while i < unsorted_array.length - 1
      if unsorted_array[i] > unsorted_array[i+1]
        unsorted_array[i],unsorted_array[i+1] = unsorted_array[i+1],unsorted_array[i]
        swapped = true
      end
      i += 1
    end
  end
  return unsorted_array
end

puts recursive_sort([2,5,1,3,7],[])
