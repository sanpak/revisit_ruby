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
puts selection_sort([20,8,4,5,3,20,11,100,40,20,19])
