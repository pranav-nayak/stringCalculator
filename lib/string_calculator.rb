class StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = digits(str)

    digits.sum
  end

  private

  def digits(str)
    str.gsub("\n", ',').split(',').map(&:to_i)
  end
end