def merge_sort(array)
  sorted = []
  if array.length < 2
    return array
  else
    left = merge_sort(array[0..array.length/2-1])
 
    right = merge_sort(array[array.length/2..-1])

    while left.length > 0 || right.length > 0
      if left.length == 0
        sorted.concat(right)
        break
      elsif right.length == 0
        sorted.concat(left)
        break
      elsif left[0] < right[0] 
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
 
  end
  return sorted

end

unsorted = []
40.times {unsorted << rand(99)}
puts "unsorted list: #{unsorted}"
puts "sorted list: #{merge_sort(unsorted)}"

