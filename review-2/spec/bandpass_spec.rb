require 'bandpass_filter'

describe BandpassFilter do
  before :each do
    @bandpass_filter = BandpassFilter.new
  end

  describe '.set_min_bound' do
    it 'sets minimum bound' do
      expect(@bandpass_filter.set_min_bound(50)).to eq 50
    end
  end

  describe '.set_max_bound' do
    it 'sets maximum bound' do
      expect(@bandpass_filter.set_max_bound(100)).to eq 100
    end
  end

  describe '.filter_soundwave' do
    it 'sets frequencies below minimum bound to minimum bound' do
      @bandpass_filter.set_min_bound(20)
      expect(@bandpass_filter.filter_soundwave([10, 20, 40])).to eq [20, 20, 40]
    end

    it 'sets frequencies above high bound to high bound' do
      @bandpass_filter.set_max_bound(100)
      expect(@bandpass_filter.filter_soundwave([100, 200, 400])).to eq [100, 100, 100]
    end

    it 'filters maximum AND minimum frequencies' do
      @bandpass_filter.set_min_bound(30)
      @bandpass_filter.set_max_bound(31)
      expect(@bandpass_filter.filter_soundwave([10, 20, 40])).to eq [30, 30, 31]
    end
  end
end