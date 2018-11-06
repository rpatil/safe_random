# SafeRandom

SafeRandom gem will help to generate random string, number and alphanumeric very easily.

## Installation

Add this line to your application's Gemfile:

    gem 'safe_random'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install safe_random

## Usage

Try this snippet of code on ruby irb

    require 'safe_random'
    puts SafeRandom.number                          # => 44323547714622714350878229787161
    puts SafeRandom.number(5)                       # => 54786
    puts SafeRandom.string                          # => TrvzvDGrLUdrNRYHWyHcqcajqeWDvQSK
    puts SafeRandom.string(5)                       # => qycdi
    puts SafeRandom.alphanumeric                    # => PpHPUg1gPnsGD6RNDETsP3DAwm3sGqD3
    puts SafeRandom.alphanumeric(5)                 # => rPtK2
    puts SafeRandom.small_token                     # => 52b2df1c8

    # => Sentences & Paragraphs
    puts SafeRandom.sentences                       # => "Always fighting all the evil forces bringing peace and justice to all."
    puts SafeRandom.sentences(2)                    # => "I might jump an open drawbridge or Tarzan from a vine. Beause I'm the unknown stuntman that makes Eastwood look so fine."
    puts SafeRandom.paragraphs                      # => "Lorem ipsum dolor sit amet  consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Who says you have to call just one place home?. \n\n"
    puts SafeRandom.paragraphs(3)                   # => "Lorem ipsum dolor sit amet  consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\n Who says you have to call just one place home?. Soaring through all the galaxies in search of Earth flying in to the night. \n\n Maybe tomorrow I'll want to settle down - until tomorrow I'll just keep moving on. \n\n"


## Contributing

1. Fork it ( https://github.com/[my-github-username]/safe_random/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
