def bubble_sort(array)
  # set swapped to enforce to loop
  swapped = true

  # edge case if array length is single element
  return array if array.length == 1

  # force the outer loop
  while swapped
    # set outer swapped loop to false  
    # if no swapped, swapped will remain false
    swapped = false

    # set inner loop from first index to n-1 index
    # loop through n - 1 element in array
    (0...(array.length - 1)).each do |n|
      # swapped if current value is greater than next value
      if array[n] > array[n + 1]
        array[n], array[n + 1] = array[n + 1], array[n]
        # if there is at least 1 swapped detected, set swapped to true to keep the outer loop going 
        swapped = true
      end
    end
  end

  # return bubble sort
  array
end

a = [2,3,1,5,7,8]
b = [1,2,3]
c = [3,2,1]
d = [1]

p bubble_sort(a) == [1,2,3,5,7,8]
p bubble_sort(b) == [1,2,3]
p bubble_sort(c) == [1,2,3]
p bubble_sort(d) == [1]