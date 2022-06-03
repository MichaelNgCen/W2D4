def no_dupes?(arr)
    cnt = Hash.new(0)
    arr.each {|i| cnt[i] += 1}
    cnt.keys.select {|i| cnt[i] == 1}
end

p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []