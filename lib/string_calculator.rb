class StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = digits(str)

    digits.sum
  end

  private

  def digits(str)
    delimeter = str.start_with?("//") ? str[2,1] : /,|\n/
    str.split(delimeter).map(&:to_i)
  end

end