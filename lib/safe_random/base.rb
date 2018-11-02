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

  def self.small_token
    generate_token(6)
  end

  def self.token
    generate_token(10)
  end

  def self.generate_token(_length)
    Digest::SHA1.hexdigest([Time.now, rand].join)[0.._length]
  end
end
