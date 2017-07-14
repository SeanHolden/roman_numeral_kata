class RomanNumeralGenerator
  class NoZeroError < StandardError
    def message
      'Zero or below is not defined in Roman numerals'
    end
  end

  class ValueTooHigh < StandardError
    def message
      'Unable to convert numbers over 3999'
    end
  end
end
