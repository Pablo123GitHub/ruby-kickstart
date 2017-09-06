# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count (inputString)
  inputArr = inputString.downcase.split(" ")

newHash = inputArr.uniq.group_by{|word|
inputArr.count(word) }

 brandNewHash = Hash.new

newHash.each do | value, words |
 words.each do |x|
   brandNewHash[x] = value
 end
end

brandNewHash

end
