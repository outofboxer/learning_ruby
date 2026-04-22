def caesar_cipher(in_str, shift1) 
  
  res = in_str.chars.map { |c|
    if ('a'..'z').cover?(c) # ord >= 'a'.ord && c.ord <= 'z'.ord
      newChar = ('a'.ord + (c.ord - 'a'.ord + shift1) % 26).chr
      # if newChar > 'z'.ord 
      #  newChar = 'a'.ord + shift1 - ('z'.ord-c.ord) - 1
      # end
      # next newChar.chr
    elsif c.ord >= 'A'.ord && c.ord <= 'Z'.ord
      newChar = c.ord+ shift1
      if newChar > 'Z'.ord 
        newChar = 'A'.ord + shift1 - ('Z'.ord-c.ord) - 1
      end
      next newChar.chr
    else
      c
    end
  }.join
    
  res
end

# p caesar_cipher("hat", 5)

p caesar_cipher("What a string!", 5)
