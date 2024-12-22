class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        count = 0
        numbers.split(',').map do |element|
            count +=element.to_i
        end
        count
    end
end