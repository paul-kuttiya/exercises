def quicksort(array)
  return array if array.length <= 1
  pivot = array[array.length - 1]
  left, right = array[0..-2].partition { |x| x < pivot }
  quicksort(left) + [pivot] + quicksort(right)
end

a = [2,3,1,5,7,4,8]

p quicksort(a)