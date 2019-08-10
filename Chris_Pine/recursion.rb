
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

  #solve it recursively
  if unsorted_array.length == 0
    return sorted_array
  end

  smallest_value = unsorted_array[0]
  smallest_value_index = 0
  i = 0
  while i < unsorted_array.length
    if smallest_value > unsorted_array[i]
      smallest_value = unsorted_array[i]
      smallest_value_index = i
    end
    i += 1
  end
  sorted_array << unsorted_array.delete_at(smallest_value_index)
  recursive_sort(unsorted_array,sorted_array)
  #!!!!!!!!! The following is bubble sort!!!!!!!!
  # swapped = true
  #
  # while swapped
  #
  #   swapped = false
  #   i = 0
  #   while i < unsorted_array.length - 1
  #     if unsorted_array[i] > unsorted_array[i+1]
  #       unsorted_array[i],unsorted_array[i+1] = unsorted_array[i+1],unsorted_array[i]
  #       swapped = true
  #     end
  #     i += 1
  #   end
  # end
  # return unsorted_array
  #!!!!!!!!!!!! end of bubble sort!!!!!!!!!!!!!!!!!!!!!!!!

  #This method is based on the idea of bubble sort algorithm
  # swapped = true
  # while swapped
  #   smallest_value = unsorted_array[0]
  #   smallest_value_index = 0
  #   i = 1
  #   while i < unsorted_array.length
  #     if smallest_value > unsorted_array[i]
  #       smallest_value = unsorted_array[i]
  #       smallest_value_index = i
  #     end
  #     i += 1
  #   end
  #   sorted_array << unsorted_array.delete_at(smallest_value_index)
  #   swapped = false if unsorted_array.length == 0
  # end
  # puts sorted_array



  # (unsorted_array.length).times do
  #   smallest_value = unsorted_array[0]
  #   smallest_value_index = 0
  #   i = 1
  #   while i < unsorted_array.length
  #     if smallest_value > unsorted_array[i]
  #       smallest_value = unsorted_array[i]
  #       smallest_value_index = i
  #     end
  #     i += 1
  #   end
  #   sorted_array << unsorted_array.delete_at(smallest_value_index)
  # end
  # puts sorted_array
end

# puts recursive_sort([2,5,1,3,7,4,2],[])

def bubble_sort_recursive(array)
  i= 0

  while i < array.length - 1
    if array[i] > array[i + 1]
      array[i],array[i + 1] = array[i + 1],array[i]
      bubble_sort_recursive(array)
    end
    i += 1
  end
  return array
end

puts bubble_sort_recursive([2,3,1,5,4,10,20,11,13,18,15,14])
