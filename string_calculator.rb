class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    delimiters = [",", "\n"]

    if numbers.start_with?('//')
      delimiter, numbers = numbers.split("\n", 2)
      delimiters << delimiter[2..]
    end
    
    regex = Regexp.union(delimiters)
    numbers.split(regex).map(&:to_i).sum
  end
end
