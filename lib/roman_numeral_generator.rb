# This class takes a single argument as an integer value
#
# Calling the generate method will return this number in Roman numeral format.
#
# Example of use:
# ---------------
# roman_numeral = RomanNumeralGenerator.new(499)
# roman_numeral.generate
# => "CDXCIX"

require './lib/roman_numeral_generator/numeral'
require './lib/roman_numeral_generator/errors'

class RomanNumeralGenerator
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def generate
    raise NoZeroError if zero_or_less?
    raise ValueTooHigh if four_thousand_or_more?

    numeral_array.join
  end

  private

  def numeral_array
    number.to_s.reverse.chars.map.with_index do |digit, place_value|
      Numeral.get(digit, place_value)
    end.reverse
  end

  def zero_or_less?
    number <= 0
  end

  def four_thousand_or_more?
    number >= 4000
  end
end
