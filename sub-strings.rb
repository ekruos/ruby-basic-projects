def substrings(word, dictionary)
  hash = {}
  substrings = []

  (0..word.length-1).each do |i|
    (i..word.length-1).each do |j|
      substrings.push(word[i..j])
    end
  end
  
  substrings.each do |substring|
    instances = 0
    dictionary.each do |element|
      if element.downcase == substring.downcase
        instances += 1
      end
    end
    if instances > 0
      hash[substring] = instances
    end
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
puts substrings("below", dictionary)


