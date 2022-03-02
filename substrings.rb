def substrings(word, dictionary)
  words = word.downcase.split
  hash_result = Hash.new(0)
  for word in words
    dictionary.each do |string|
      if word.include? string
        hash_result[string] += 1
      end
    end
  end
  puts hash_result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
