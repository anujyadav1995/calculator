require 'string_calculator'

RSpec.describe StringCalculator do
    describe '.add' do
        context 'when the input return empty' do
            it 'return 0' do
                expect(StringCalculator.add("")).to eq(0)
            end
        end 
    end
end