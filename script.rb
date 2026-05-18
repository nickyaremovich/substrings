dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(strings, dictionary)
  result = {} #start new hash
  lowercase = strings.downcase #edge case for case
  dictionary.each do |word|
    count = lowercase.scan(word).count
    result[word] = count if count > 0
  end
  result 
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)