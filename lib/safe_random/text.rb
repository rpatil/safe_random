module SafeRandom
  # => Returns a given number of paragraphs delimited by two newlines (defaults to two paragraphs),
  # => using a small pool of generic sentences.
  # => SafeRandom.sentences
  # => SafeRandom.paragraphs
  #
  # "I might jump an open drawbridge or Tarzan from a vine, beause I'm the unknown stuntman that makes Eastwood look so fine.\n\n \Always fighting all the evil forces bringing peace and justice to all. \n\n"

  def self.sentences(num = 1)
    sentences = ''
    num.times do
      sentences += Constants::SET_PARAGRAPH.sample + '. '
    end
    sentences.strip
  end

  def self.paragraphs(num = 2)
    text = ''

    num.times do
      (rand(5) + 1).times do
        text += Constants::SET_PARAGRAPH.sample + '. '
      end
      text += "\n\n"
    end
    text
  end
end
