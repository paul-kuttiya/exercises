def selection_sort(array)
  # check if array is single
  return array if array.length == 1  
  
  # loop from 0 index to n-1 index
  (0...(array.length-1)).each do |i|
    # set min index to current
    min_idx = i

    # set inner loop j to loop from i+1 to the last element
    (i + 1).upto(array.length - 1).each do |j|
      # update min index to j, if inner loop element j is greater than min index
      if array[j] < array[i]
        min_idx = j
      end  
    end

    # if outer loop value is already min, i and min_index is the same
    if i != min_idx
      # swapped outer loop current value at i with min index
      array[i], array[min_idx] = array[min_idx], array[i]
    end
  end

  array
end

a = [2,3,1,5,7,8]
b = [1,2,3]
c = [3,2,1]
d = [1]

p selection_sort(a) == [1,2,3,5,7,8]
p selection_sort(b) == [1,2,3]
p selection_sort(c) == [1,2,3]
p selection_sort(d) == [1]