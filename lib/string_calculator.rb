class StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = str.split(',').map(&:to_i)

    digits.sum
  end
end