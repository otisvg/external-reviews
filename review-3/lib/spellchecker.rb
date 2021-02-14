class Spellchecker
 
 def initialize(word_bank)
   @word_bank = word_bank
 end
 
 def check(words)
   words.split(" ").map do |word| 
     valid?(word)
   end.join(" ")
 end
 
 
 private
 
 def valid?(word)
   @word_bank.include?(word) ? word : "~#{word}~"
 end
end
