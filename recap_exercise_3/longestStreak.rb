def longest_streak(str)
    n, l = "", ""
    (0...str.length).each {|i| str[i] == str[i-1] || i == 0 ? n += str[i] : n = str[i]}
    l = n if n.length > l.length; l
end

p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'
