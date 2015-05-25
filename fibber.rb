class Fibber

  def runner(quantity)
    sequence = generate(quantity)
    jagged(sequence)
    better(sequence)
    fancy(sequence)
  end

  private

  def generate(quantity)
    (2...quantity).reduce([0,1]) do |result, index|
      result[index] = result[index - 1] + result[index - 2]
      result
    end
  end

  def jagged(sequence)
    sequence.each_slice(5) do |line|
      line.map do |item|
        print "#{item} "
      end
      puts ""
    end
  end

  def better(sequence)
    sequence.each_slice(5) do |line|
      line.map do |item|
        print item.to_s.rjust(4)
      end
      puts ""
    end
  end

  def fancy(sequence)
    sequence.each_slice(5) do |line|
      line.map do |item|
        print item.to_s.rjust(max_size(sequence))
      end
      puts ""
    end
  end

  def max_size(sequence)
    sequence.last.to_s.length + 1
  end
end
