require './lib/roman_numeral_generator'

describe RomanNumeralGenerator do
  describe '#generate' do
    subject { RomanNumeralGenerator.new(number).generate }

    context 'single digit numbers' do
      context 'number is 3' do
        let(:number) { 3 }

        it { is_expected.to eql('III') }
      end

      context 'number is 5' do
        let(:number) { 5 }

        it { is_expected.to eql('V') }
      end

      context 'number is 7 ' do
        let(:number) { 7 }

        it { is_expected.to eql('VII') }
      end
    end

    context 'double digit numbers' do
      context 'number is 12' do
        let(:number) { 12 }

        it { is_expected.to eql('XII') }
      end

      context 'number is 36' do
        let(:number) { 36 }

        it { is_expected.to eql('XXXVI') }
      end

      context 'number is 99' do
        let(:number) { 99 }

        it { is_expected.to eql('XCIX') }
      end
    end

    context 'triple digit numbers' do
      context 'number is 123' do
        let(:number) { 123 }

        it { is_expected.to eql('CXXIII') }
      end

      context 'number is 472' do
        let(:number) { 472 }

        it { is_expected.to eql('CDLXXII') }
      end

      context 'number is 950' do
        let(:number) { 950 }

        it { is_expected.to eql('CML') }
      end
    end

    context 'four digit numbers' do
      context 'number is 1234' do
        let(:number) { 1234 }

        it { is_expected.to eql('MCCXXXIV') }
      end

      context 'number is 2936' do
        let(:number) { 2936 }

        it { is_expected.to eql('MMCMXXXVI') }
      end

      context 'number is 3999' do
        let(:number) { 3999 }

        it { is_expected.to eql('MMMCMXCIX') }
      end
    end

    context 'numbers zero or below' do
      context 'number is 0' do
        let(:number) { 0 }

        it 'raises error' do
          expect { subject }.to raise_error(RomanNumeralGenerator::NoZeroError)
        end
      end

      context 'number is -5' do
        let(:number) { -5 }

        it 'raises error' do
          expect { subject }.to raise_error(RomanNumeralGenerator::NoZeroError)
        end
      end
    end

    context 'numbers 4000 or above' do
      context 'number is 4000' do
        let(:number) { 4000 }

        it 'raises error' do
          expect { subject }.to raise_error(RomanNumeralGenerator::ValueTooHigh)
        end
      end

      context 'number is 9999' do
        let(:number) { 9999 }

        it 'raises error' do
          expect { subject }.to raise_error(RomanNumeralGenerator::ValueTooHigh)
        end
      end
    end
  end
end
