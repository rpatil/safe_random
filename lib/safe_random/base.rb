module SafeRandom
  def self.number(_length = 32)
    random(_length, Constants::SET_NUMBER)
  end

  def self.string(_length = 32, _case = nil)
    random(_length, Constants::SET_STRING)
  end

  def self.alphanumeric(_length = 32, _case = nil)
    random(_length, Constants::SET_ALPHANUMBERIC)
  end

  def self.random(len = 32, character_set)
    chars = character_set.map { |x| x.is_a?(Range) ? x.to_a : x }.flatten
    Array.new(len) { chars.sample }.join
  end
end
