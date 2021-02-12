class Spellchecker

  def initialize(word_bank)
    @word_bank = word_bank
  end

  def check(words)
    words.split(" ").each do |word|  
      word
    end.join(" ")
  end

end