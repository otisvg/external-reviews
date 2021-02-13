class Spellchecker
 
 def initialize(word_bank)
   @word_bank = word_bank
 end
 
 def check(words)
   words.split(" ").map do |word| 
     word
   end.join(" ")
 end
 

end
