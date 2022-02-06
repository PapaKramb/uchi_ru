arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

def occurrences_in_array(arr)
  arr.reduce Hash.new(0) do |hash, num|
    hash[num] += 1
    hash
  end
end

puts occurrences_in_array(arr)
