# Implement a method #substrings that takes a string as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.

#   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
# Next, make sure your method can handle multiple words:

#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# Please note the order of your keys might be different.

# Quick Tips:

# Recall how to turn strings into arrays and arrays into strings.

# ALGORITHM: Declare an array called dictionary with inital value of a list valid words
# dictionary is the list of words that we want to check how many times each word is present in the passed string
# declare an empty hash
# delcare a variable called words_a that stores an array made of the words from the passed string


dictionary = %w(give me some words to test things ive runout out)

def substrings(string, dico)
  my_hash = Hash.new(0)
  words_a = string.split()
  dico.each do |v|
    if string.downcase.include?(v.downcase) then my_hash[v] += words_a.count{|x| x.downcase.include?(v.downcase)} end
  end
  my_hash
end

p substrings("Give me some Ghetto To test somethings out outive", dictionary)






