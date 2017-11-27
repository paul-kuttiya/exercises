def partlist(arr)
  (1...arr.size).map { |n| [arr.first(n).join(" "), arr.last(arr.size - n).join(" ")] }
end