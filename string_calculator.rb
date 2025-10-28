class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    delimiters = [",", "\n"]

    if numbers.start_with?('//')
      delimiter, numbers = numbers.split("\n", 2)
      delimiters << delimiter[2..]
    end
    
    regex = Regexp.union(delimiters)
    numbers = numbers.split(regex).map(&:to_i)
    
    negative_numbers = numbers.select {|num| num.negative? }

    if negative_numbers.any?
      raise "negative numbers not allowed: #{negative_numbers.join(', ')}"
    end

    numbers.sum
  end
end
