arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

def occurrences_in_array(arr)
  result = Hash.new(0)
  arr.each { |key| result[key] += 1 }
  result
end

puts occurrences_in_array(arr)
