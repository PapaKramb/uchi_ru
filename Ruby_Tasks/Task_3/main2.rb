arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

def occurrences_in_array(arr)
  arr.inject({}) { |k,v| 
    k[v] ||= 0
    k[v] += 1
    k 
  }
end

puts occurrences_in_array(arr)
