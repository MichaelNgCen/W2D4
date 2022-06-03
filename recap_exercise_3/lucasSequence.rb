def lucas_sequence(n)
    if n == 0
        return []
    elsif  n == 1
        return [2]
    elsif n == 2
        return [2,1]
    end
    seq = lucas_sequence(n - 1)
    seq << seq[-1] + seq[-2]; seq
end

p lucas_sequence(0)   # => []
p lucas_sequence(1)   # => [2]    
p lucas_sequence(2)   # => [2, 1]
p lucas_sequence(3)   # => [2, 1, 3]
p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]