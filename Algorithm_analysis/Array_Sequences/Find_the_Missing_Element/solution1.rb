def finder1(arr1, arr2)
  arr1 = arr1.sort
  arr2 = arr2.sort

  arr1.zip(arr2).each do |n1, n2|
    return n1 if n1 != n2
  end
end

p finder1([5,5,7,7],[5,7,7]) == 5
p finder1([1,2,3,4,5,6,7],[3,7,2,1,4,6]) == 5
p finder1([9,8,7,6,5,4,3,2,1],[9,8,7,5,4,3,2,1]) == 6