def selection_sort(array)
  i = 0
  j = 0
  smallest_idx = 0
  while j < array.length
    smallest_value = array[j]
    i = j
    while i < array.length - 1
      if smallest_value > array[i + 1]
        smallest_value = array[i + 1]
        smallest_idx = i + 1
      end
      i += 1
    end
    array[j],array[smallest_idx] = array[smallest_idx],array[j]
    j += 1
  end
  return array
end
# puts selection_sort([20,8,4,5,3,20,11,100,40,20,19])

def selection_sort_recursive(array,n = 0)
  if n == array.length
    return array
  end
  i = n
  smallest_value = array[n]
  smallest_idx = n
  while i < array.length - 1
    if smallest_value > array[i + 1]
      smallest_value = array[i + 1]
      smallest_idx = i + 1
    end
    i += 1
  end
  array[n],array[smallest_idx] = array[smallest_idx],array[n]
  selection_sort_recursive(array,n + 1)
end

p selection_sort_recursive([5,3,4,2,1])
p selection_sort_recursive([20,8,4,5,3,20,11,100,40,20,19])

def selection_sort_recursive_v2(array,sorted_array = [])
  if array.length == 0
    return sorted_array
  end

  i = 0
  smallest_idx = array[i]
  smallest_value = array[i]
  j = i
  while i < array.length
    if smallest_value > array[i + 1]
      smallest_value = array[i + 1]
      smallest_idx = i + 1
    end
    i += 1
  end
  array[j],array[smallest_idx] = array[smallest_idx],array[j]
  sorted_array << array.shift
  selection_sort_recursive_v2(array,sorted_array)
end
