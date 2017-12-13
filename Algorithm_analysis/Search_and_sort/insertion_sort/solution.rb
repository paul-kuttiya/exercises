def insertion_sort(arr)
  (1...arr.length).each do |i|
    temp = arr[i]
    position = i

    # keep checking hit the first element yet, and previous value is greater than temp
    while position > 0 && arr[position-1] > temp
      # shift the value from the left to current index if previous is greater
      arr[position] = arr[position-1]
      # decrement to check previous index
      position = position - 1
    end

    # break inner while loop, position will equal where temp should be index at
    arr[position] = temp
    # position
  end

  arr
end

a = [2,3,1,5,7,4,8]
b = [1,2,3]
c = [3,2,1]
d = [1]

p insertion_sort(a) == [1,2,3,4,5,7,8]
p insertion_sort(b) == [1,2,3]
p insertion_sort(c) == [1,2,3]
p insertion_sort(d) == [1]