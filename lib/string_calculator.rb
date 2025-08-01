class StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = digits(str)

    raise_if_nagatives(digits)

    digits.sum
  end

  private

  def digits(str)
    delimeter = str.start_with?("//") ? str[2,1] : /,|\n/
    str.split(delimeter).map(&:to_i)
  end

  def raise_if_nagatives(digits)
    negatives = digits.select { |a| a < 0 }
    raise NegativeNumbersError, "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end

class NegativeNumbersError < StandardError
  
end