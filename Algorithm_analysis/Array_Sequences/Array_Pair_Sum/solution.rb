def pair_sum(arr, k)
  # check edge cases
  return 0 if arr.length < 2

  check_pairs = []
  result = []

  # iterate array
  (0...arr.length).each do |idx|
    # find pair
    pair = k - arr[idx]

    # if the current value's pair is not found in check_pairs array; no any of number from our array that can use as a pair for current iteration
    if !check_pairs.include?(pair)
      # push current value and will use as a pair for other iteration
      check_pairs << arr[idx]
    # pair is found in the check pair array; there is num in our array from previous iteration that can use as a pair 
    else
      # stored pair and current value in result 
      result << [pair, arr[idx]].sort
    end
  end

  result.length
end

p pair_sum([1,9,2,8,3,7,4,6,5,5,13,14,11,13,-1],10) == 6
p pair_sum([1,2,3,1],3) == 1
p pair_sum([1,3,2,2],4) == 2