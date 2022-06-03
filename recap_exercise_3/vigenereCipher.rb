def vigenere_cipher(message, keys)
    a, ns = ('a'..'z').to_a, ""
    message.each_char.with_index do |c, i|
        os = ((a.index(c))+keys[i%keys.length])%a.length
        ns += a[os]; end; ns
end

p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"