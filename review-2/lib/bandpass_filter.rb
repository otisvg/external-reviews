class BandpassFilter
  attr_reader :min_bound, :max_bound

  def initialize
    @min_bound = 40
    @max_bound = 100
  end

  def set_min_bound(frequency)
    @min_bound = frequency
  end

  def set_max_bound(frequency)
    @max_bound = frequency
  end

  def filter_soundwave(soundwave)
    soundwave.map do |freq|
      freq = min_bound if freq < min_bound
      freq = max_bound if freq > max_bound
      freq
    end
  end
end