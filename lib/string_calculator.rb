class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        delimiter = /,|\n/
        if numbers.start_with?("//")
            parts = numbers.split("\n")
            delimiter = Regexp.escape(parts[0][2])
            numbers = parts[1]
        end
    
        num_array = numbers.split(/#{delimiter}/).map(&:to_i)
        negatives = num_array.select { |num| num < 0 }
        raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
        num_array.sum
    end
end