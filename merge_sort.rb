def merge_sort(array)
  sorted = []
  sleep 0.1
  if array.length < 2
    return array
  else
    left = merge_sort(array[0..array.length/2-1])
 
    right = merge_sort(array[array.length/2..-1])

    while left.length > 0 || right.length > 0
      print left, right, "\n"
      if left.length == 0
        sorted << right[0]
        right.delete_at(0)
      elsif right.length == 0
        sorted << left[0]
        left.delete_at(0)

      elsif left[0] < right[0] 
        sorted << left[0]
        left.delete_at(0)
      else
        sorted << right[0]
        right.delete_at(0)
      end
    end
      print "sorted"
      p sorted
 
  end
  return sorted

end

unsorted = (1..10).to_a.shuffle
puts "unsorted list: #{unsorted}"
puts "sorted list: #{merge_sort(unsorted)}"

