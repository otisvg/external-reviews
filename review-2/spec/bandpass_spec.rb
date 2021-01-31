require 'bandpass_filter'

describe BandpassFilter do
  before :each do
    @bandpass_filter = BandpassFilter.new
  end

  describe '.set_min' do
    it 'sets minimum frequency bound' do
      expect(@bandpass_filter.set_min(50)).to eq 50
    end
  end

  describe '.set_max' do
    it 'sets maximum frequency bound' do
      expect(@bandpass_filter.set_max(100)).to eq 100
    end
  end

  describe '.filter' do
    it 'sets frequencies below minimum frequency bound to minimum frequency bound' do
      @bandpass_filter.set_min(20)
      expect(@bandpass_filter.filter([10, 20, 40])).to eq [20, 20, 40]
    end

    it 'sets frequencies above maximum frequency bound to maximum frequency bound' do
      @bandpass_filter.set_max(100)
      expect(@bandpass_filter.filter([100, 200, 400])).to eq [100, 100, 100]
    end

    it 'sets maximum AND minimum frequencies to their respective bounds' do
      @bandpass_filter.set_min(30)
      @bandpass_filter.set_max(31)
      expect(@bandpass_filter.filter([10, 20, 40])).to eq [30, 30, 31]
    end
  end
end