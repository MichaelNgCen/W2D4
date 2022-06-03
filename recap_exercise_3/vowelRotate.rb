def vowel_rotate(str)
    ns = str[0..-1]; v = 'aeiou'
    vi = (0...str.length).select { |i| v.include?(str[i]) }
    rv = vi.rotate(-1)
    vi.each_with_index {|vj, i| ns[vj] = str[rv[i]]}; ns
end

p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"