def substrings(*words, dictionary)
  dictionary.each do |item|
    item = item.downcase
  end

  hash = {}
  substrings = []

  words.each do |word|
    (0..word.length-1).each do |i|
      (i..word.length-1).each do |j|
        substrings.push(word[i..j].downcase)
      end
    end
  end
  
  dictionary.each do |element|
    substrings.each do |substring|
      if substring == element
        if hash.include?(substring) == false
          hash[substring] = 1
        else
          hash[substring] += 1
        end    
      end
    end
    
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Should print { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


