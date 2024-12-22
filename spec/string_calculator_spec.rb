require 'string_calculator'

RSpec.describe StringCalculator do
    describe '.add' do
        it 'return 0' do
            expect(StringCalculator.add("")).to eq(0)
        end
        it 'when there is a single number' do
            expect(StringCalculator.add("1")).to eq(1)
        end
        it 'when there is a double or multiple number' do
            expect(StringCalculator.add("1,5")).to eq(6)
        end
        it 'when there is a handle new lines between numbers' do
            expect(StringCalculator.add("1\n2,3")).to eq(6)
        end
        it 'when the input is delimiters' do
            expect(StringCalculator.add("//;\n1;2")).to eq(6)
        end
    end
end