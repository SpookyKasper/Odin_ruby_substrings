# ALGORITHM: 

# Before the method:
# Declare an array called dictionary with inital value of a list valid words
# dictionary is the list of words that we want to check how many times each word is present in the passed string

# Inside the method:
# declare an empty hash called my_hash,
# delcare a variable called words_a that stores an array made of the words from the passed string
# Iterate through dictionary and for each word check if the string(in lower case) includes the word in lower case
# If the answer to that question is yes then add the word to my_hash as the key and with a value equal to the the number give by this 
# question: How many times does this word appear as a substring from one of the words from the passed string ?

dictionary = %w(give me some words to test things ive runout out)
dictionary2 = %w(below down go going horn how howdy it i low own part partner sit)

def substrings(string, dico)
  my_hash = Hash.new(0)
  words_a = string.split()
  dico.each do |w|
    if string.downcase.include?(w.downcase) then my_hash[w] += words_a.count{|x| x.downcase.include?(w.downcase)} end
  end
  my_hash
end

p substrings("Give me some Ghetto To test somethings out outive", dictionary)
p substrings("below", dictionary2)
p substrings("Howdy partner, sit down! How's it going?", dictionary2)






