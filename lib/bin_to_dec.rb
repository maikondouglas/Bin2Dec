class BinToDec
  def self.conversor(binary_number)
    return 'Error: not a binary number' unless binary_number

    number = binary_number.to_s.length
    decimal_value = 0

    number.times do |i|
      temp = binary_number[i].to_i

      if temp.zero? || (temp == 1)
        number -= 1
        decimal_value += temp * (2**number)
      end
      return 'Error: input coontains illegal charecters' unless binary_number.instance_of?(Integer)
    end

    decimal_value
  end
end
