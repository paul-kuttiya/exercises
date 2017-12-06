a = [0,1,0,1,0,0,0,0,1,0]
# time On space O1
def bitSort(arr)
  left = 0
  right = arr.length - 1
  
  while left < right do
    if arr[right] == 0 && arr[left] == 1
      arr[left] = 0
      arr[right] = 1
    end
    
    if arr[left] == 0
      left += 1
    end
    
    if arr[right] == 1
      right -= 1
    end
  end
  
  arr
end

p bitSort(a)