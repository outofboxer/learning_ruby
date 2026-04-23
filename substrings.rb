dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  

def substrings(my_str, dict)
  downcased = my_str.downcase
  dict.each_with_object(Hash.new(0)) do
    |word, acc |
    count = downcased.scan(word).length
    acc[word] += count
  end
end

def substrings2(my_str, dict)
  downcased = my_str.downcase
  dict.each_with_object(Hash.new(0)) do
    |word, acc |

    entries = 0
    subs = downcased
    while subs.length > 0
      index = subs.index(word)
      break if !index 
        
      subs = subs[index+1..]
      entries += 1  
    end
  
    if entries > 0
      acc[word] += entries
    end
  end
end


  
  
p substrings2("below", dictionary)
# => {"below" => 1, "low" => 1}
p substrings2("Howdy partner, sit down! How's it going?", dictionary)
# => {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1}
