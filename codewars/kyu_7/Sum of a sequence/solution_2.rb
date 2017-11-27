def sequence_sum(begin_number, end_number, step)
  return 0 if end_number > begin_number
  
  sum = 0
  
  while begin_number <= end_number
    sum += step
    begin_number += step
  end

  sum
end