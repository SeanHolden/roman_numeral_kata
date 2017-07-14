# This class takes two arguments:
# 1) A single digit.
# 2) The digit's place value.
#
# It then converts this digit into a roman numeral.
#
# Example of use:
# Numeral.get(7, 0)
# => "VII"
# Numeral.get(7, 1)
# => "LXX"
#
# Valid place value keys:
# 0 = unit
# 1 = ten
# 2 = hundred
# 3 = thousand

class RomanNumeralGenerator
  class Numeral
    attr_reader :digit, :place_value

    def self.get(digit, place_value)
      new(digit, place_value).convert
    end

    def initialize(digit, place_value)
      @digit, @place_value = digit, place_value
    end

    def convert
      [units, tens, hundreds, thousands][place_value][digit]
    end

    private

    def units
      {
        '1' => 'I',
        '2' => 'II',
        '3' => 'III',
        '4' => 'IV',
        '5' => 'V',
        '6' => 'VI',
        '7' => 'VII',
        '8' => 'VIII',
        '9' => 'IX'
      }
    end

    def tens
      {
        '1' => 'X',
        '2' => 'XX',
        '3' => 'XXX',
        '4' => 'XL',
        '5' => 'L',
        '6' => 'LX',
        '7' => 'LXX',
        '8' => 'LXXX',
        '9' => 'XC'
      }
    end

    def hundreds
      {
        '1' => 'C',
        '2' => 'CC',
        '3' => 'CCC',
        '4' => 'CD',
        '5' => 'D',
        '6' => 'DC',
        '7' => 'DCC',
        '8' => 'DCCC',
        '9' => 'CM'
      }
    end

    def thousands
      {
        '1' => 'M',
        '2' => 'MM',
        '3' => 'MMM'
      }
    end
  end
end
