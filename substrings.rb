dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  

def substrings(my_str, dict)
  downcased = my_str.downcase
  dict.each_with_object(Hash.new(0)) do
    |word, acc |
    count = downcased.scan(word).length
    acc[word] += count
  end
end



  
  
p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)
