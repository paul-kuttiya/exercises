def finder2(arr1, arr2)
  count = {}

  ## store all num as key and count as value
  arr2.each do |n|
    count[n] = count[n] || 0
    count[n] += 1
  end

  arr1.each do |i|
    # check if the single number(i) is not stored in arr2; missing
    return i if count[i] == nil

    # check duplicate numbers missing
    # if couter is 0 return number
    return i if count[i] == 0
    # substract counter by 1
    count[i] -= 1
  end
end

p finder2([5,5,7,7],[5,7,7]) == 5
p finder2([1,2,3,4,5,6,7],[3,7,2,1,4,6]) == 5
p finder2([9,8,7,6,5,4,3,2,1],[9,8,7,5,4,3,2,1]) == 6