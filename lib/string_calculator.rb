class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        delimiter = /,|\n/
        if numbers.start_with?("//")
            parts = numbers.split("\n")
            delimiter = Regexp.escape(parts[0][2])
            numbers = parts[1]
        end
    
        count = 0
        numbers.split(/#{delimiter}/).map do |element|
            count +=element.to_i
        end
        count
    end
end