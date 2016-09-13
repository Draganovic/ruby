class Hamming
  VERSION = 1

  def self.compute(s1, s2)

    if s1.length != s2.length
      raise ArgumentError
    else

    diff = s1.each_char.with_index.reduce(0) { |sum, (l, i)|
      if l != s2[i]
        sum += 1
      end
    sum }
  end
end

end
