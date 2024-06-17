dictionary = ["will", "i", "get", "home","it","sit","down", "hit", "hat", "mat","sat", "glad", "mad" ,"part", "partner", "fried", "friend","in" ,"that", "the", "they", "them", "someone", "some", "one", "ear" , "hear", "heard", "store", "storage","stare", "star", "you", "your"]


def substrings(word, dictionary)
  word = word.downcase
  counts = Hash.new(0)
  dictionary.each do |substrings|
    substrings_downcase = substrings.downcase
    index = word.index(substrings_downcase)
    while index
      counts[substrings_downcase] += 1
      index = word.index(substrings_downcase, index + 1)
    end
  end
  counts
end

puts "Enter some words"
word = gets.chomp


puts substrings(word, dictionary)