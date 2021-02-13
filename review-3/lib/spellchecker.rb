class Spellchecker
 
 def initialize(word_bank)
   @word_bank = word_bank
 end
 
 def check(words)
   words.split(" ").map do |word| 
     invalid?(word)
   end.join(" ")
 end
 
 
 private
 
 def invalid?(word)
   @word_bank.include?(word) ? word : "~#{word}~"
 end
end
