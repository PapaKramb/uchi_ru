arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893 ]

def min_arr(arr)
  arr.min(2)
end

def max_arr(arr)
  arr.max(2)
end

puts "Two min array: #{min_arr(arr)}"
puts "Two max array: #{max_arr(arr)}"