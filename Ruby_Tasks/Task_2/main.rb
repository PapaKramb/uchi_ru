arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

def array_all_keys(arr)
  arr.map(&:keys).flatten
end

def array_all_values(arr)
  arr.map(&:values).flatten
end

def sum_all_values(arr)
  array_all_values(arr).sum
end

puts "All keys array: #{array_all_keys(arr)}"
puts "All values array: #{array_all_values(arr)}"
puts "All sums values array: #{sum_all_values(arr)}"