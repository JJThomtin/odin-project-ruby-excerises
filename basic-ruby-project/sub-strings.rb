def substrings(word, dictionary)
    result = Hash.new(0)
  
    word.downcase! # Convert the word to lowercase for case-insensitive matching
  
    dictionary.each do |substring|
      count = word.scan(substring.downcase).length
      result[substring] += count if count > 0
    end
  
    result
end