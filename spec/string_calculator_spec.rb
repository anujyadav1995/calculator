require 'string_calculator'

RSpec.describe StringCalculator do
    describe '.add' do
        it 'return 0' do
            expect(StringCalculator.add("")).to eq(0)
        end
        it 'when there is a single number' do
            expect(StringCalculator.add("1")).to eq(1)
        end
    end
end