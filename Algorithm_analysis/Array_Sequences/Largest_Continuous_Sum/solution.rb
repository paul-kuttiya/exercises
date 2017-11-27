def large_cont_sum(arr)
  # check edge case
  return 0 if arr.length == 0
  
  # current_sum and max_sum start with first element
  current_sum = max_sum = arr[0]

  # iterate starts with the first element
  (1...arr.length).each do |n|
    # check current_sum is current value or (current_sum + value), whichever is higher
    current_sum = [current_sum + arr[n], arr[n]].max

    # reassign max_sum to current_sum or max_sum itself, whichever is higher
    max_sum = [current_sum, max_sum].max
  end

  max_sum
end

p large_cont_sum([1,2,-1,3,4,-1, -9,1,3]) == 9
p large_cont_sum([1,2,-1,3,4,10,10,-10,-1]) == 29
p large_cont_sum([-1,1]) == 1 # highest sum can be single number itself