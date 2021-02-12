require 'spellchecker'

describe Spellchecker do
  subject(:spellchecker) { described_class.new(word_bank) }
  
  let(:word_bank) { ["These", "words", "are", "spelt", "correctly"] }

  describe '.check' do
    it 'returns words if all are correctly spelt' do
      words = "These words are spelt correctly"
      expect(spellchecker.check(words)).to eq("These words are spelt correctly")
    end
  end

end