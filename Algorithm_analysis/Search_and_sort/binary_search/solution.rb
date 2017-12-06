# iterate version
def binary_search(array, search)
  # start loop with start index and end index
  first = 0
  last = array.length - 1
  
  # keep looping by checking first index is still within array length
  while first <= last
    # get mid point(ruby will round down)
    mid = (first + last) / 2
    
    # return number if found
    return array[mid] if array[mid] == search
    
    # if search is less than mid point, discard the upper array
    if search < array[mid]
      # discard from mid point to upper limit, new last index is mid - 1
      last = mid - 1
    end

    # if search is greater than mid point, discard the lower array    
    if search > array[mid]
      # discard from start of array to midpoint, new first index is mid + 1      
      first = mid + 1
    end
  end
end

# recursion version
def binary_search_rec(array, search)
  first = 0
  last = array.length - 1
  
  while first <= last
    mid = (first + last) / 2
    
    return array[mid] if array[mid] == search
    
    if search < array[mid]
      # recursion by use the new array as argument 
      last = mid - 1
      binary_search_rec(array[first..last], search)      
    end

    if search > array[mid]
      first = mid + 1
      binary_search_rec(array[first..last], search)
    end
  end
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p binary_search(a, 6) == 6 # true
p binary_search(a, 55) == nil # true
p binary_search_rec(a, 6) == 6 #true