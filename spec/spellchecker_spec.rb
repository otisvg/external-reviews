require 'spellchecker'

describe Spellchecker do
  subject(:spellchecker) { described_class.new(word_bank) }
  
  let(:word_bank) { "These words are spelt correctly" }

  describe '.check' do
    it 'returns words if all are correctly spelt' do
      words = "These words are spelt correctly"
      expect(spellchecker.check(words)).to eq("These words are spelt correctly")
    end
    
    it 'returns words each wrapped in tildes if all are incorrectly spelt' do
      words = "Thse wrods rae splrt ncorretly"
      expect(spellchecker.check(words)).to eq("~Thse~ ~wrods~ ~rae~ ~splrt~ ~ncorretly~")
    end
  end

end