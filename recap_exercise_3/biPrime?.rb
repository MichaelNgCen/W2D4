def bi_prime?(num)
    (0..num).each {|i| (0..num).each {|j| return true  if i * j == num && pm(i) && pm(j)}}; false  
end

def pm(n)
    (2...n).each {|f| return false if n % f == 0}; true
end


p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false