def fib(quantity)
  output = [0,1]
  return output[0] if quantity == 1
  return output if quantity ==2
  (quantity-2).times do
    output << output[-1] + output[-2]
  end
  return output
end

def jagged(array)
  array.map.with_index do |value, index|
    print value.to_s + " "
    if (index + 1) % 5 == 0
      puts " "
    end
  end
end

def better(array)
  formatted = array.map { |number| number.to_s.rjust(4, " ") }
  formatted.map.with_index do |value, index|
    print value + " "
    if (index + 1) % 5 == 0
      puts " "
    end
  end
end

puts better(fib(15))
