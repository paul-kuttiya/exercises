def merge_sort(arr)
  # return if element is one element
  return arr if arr.length <= 1

  # find mind point
  mid = arr.length / 2

  # recursively break down array with mid point to one element
  left = merge_sort(arr[0...mid]) # eg: [1]
  right = merge_sort(arr[mid..arr.length]) # eg: [3]

  # set index to compare break down array with original array
  i = j = k = 0

  # start merging back, after breaking down to 1 element
  # starting to re-arrange original array with k starting at 0 
  # compare sorted array with left and right
  while i < left.length && j < right.length
    # if left less than right
    if left[i] < right[j]
      # assign original input array at k index to left at i index
      arr[k] = left[i]
      # increment i
      i += 1
    # right more than left or equal
    else
      # arr at k index equal to right at j index
      arr[k] = right[j]
      # increment j
      j += 1
    end

    # increment k for both conditions
    k += 1
  end

  # left array not equal to right array
  # and still has some elements left
  # will execute only one while loop from below 
  
  # left array still has remaining sorted elements, continue to iterate the rest of sorted elements from left array, with i breaking from loop above
  while i < left.length
    # set value in array k with left
    arr[k] = left[i]
    # increment i and k
    i += 1
    k += 1
  end

  # right array still has remaining sorted elements, continue to iterate the rest of sorted elements from right array, with j breaking from loop above
  while j < right.length
    arr[k] = right[j]
    j += 1
    k += 1
  end

  arr
end

a = [2,3,1,5,7,4,8]
b = [1,2,3]
c = [3,2,1]
d = [1]

p merge_sort(a)
p merge_sort(a) == [1,2,3,4,5,7,8]
p merge_sort(b) == [1,2,3]
p merge_sort(c) == [1,2,3]
p merge_sort(d) == [1]