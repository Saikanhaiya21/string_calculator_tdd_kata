require './string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when input is empty' do
      it 'returns 0' do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'when input contains a single number' do
      it 'returns the number itself' do
        expect(StringCalculator.add("1")).to eq(1)
        expect(StringCalculator.add("2")).to eq(2)
      end
    end

    context 'when input contains multiple numbers' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1,5")).to eq(6)
        expect(StringCalculator.add("1,0")).to eq(1)
      end
    end
  end
end
