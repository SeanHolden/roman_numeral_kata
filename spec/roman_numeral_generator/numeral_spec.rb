require './roman_numeral_generator'
require './roman_numeral_generator/numeral'

class RomanNumeralGenerator
  describe Numeral do
    describe '.get' do
      subject { Numeral.get(digit, place_value) }

      context 'digit has place value of unit' do
        let(:place_value) { 0 }

        context 'digit is 1' do
          let(:digit) { '1' }

          it { is_expected.to eql('I') }
        end

        context 'digit is 7' do
          let(:digit) { '7' }

          it { is_expected.to eql('VII') }
        end
      end

      context 'digit has place value of ten' do
        let(:place_value) { 1 }

        context 'digit is 1' do
          let(:digit) { '1' }

          it { is_expected.to eql('X') }
        end

        context 'digit is 7' do
          let(:digit) { '7' }

          it { is_expected.to eql('LXX') }
        end
      end

      context 'digit has place value of hundred' do
        let(:place_value) { 2 }

        context 'digit is 1' do
          let(:digit) { '1' }

          it { is_expected.to eql('C') }
        end

        context 'digit is 7' do
          let(:digit) { '7' }

          it { is_expected.to eql('DCC') }
        end
      end

      context 'digit has place value of thousand' do
        let(:place_value) { 3 }

        context 'digit is 1' do
          let(:digit) { '1' }

          it { is_expected.to eql('M') }
        end

        context 'digit is 3' do
          let(:digit) { '3' }

          it { is_expected.to eql('MMM') }
        end
      end
    end
  end
end
