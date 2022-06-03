#There is a bug I can't figure it out, ill show my what I think each itteration looks like.


def prime_factorization(num) #12
    na = []
    if num < 2
        (2...num).each do |f| #2 2 3
            if num % f == 0 && pm(f) # true true true
                na << f # [2] [2, 2] [2,3,3]
                prime_factorization(num/f) #prime_factorization(6) prime_factorization(3) prime_factorization(0) 
            else
                prime_factorization(num+1) 
            end
        end
    end
    na 
end

def pm(num)
    (2...num).none? { |i| num % i == 0}
end

p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]