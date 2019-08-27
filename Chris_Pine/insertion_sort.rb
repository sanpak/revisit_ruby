def insertion_sort(array,sorted_array = [])
  sorted_array << array.shift if sorted_array == []
  if array.legnth = 0
    return sorted_array
  end

  i = 0
  compare_num = array.shift
  temp = 0
  while i < sorted_array.length - 1
    if compare_num < array[i]
      temp = array[i]
      array[i + 1] = temp
    end
  end

end
