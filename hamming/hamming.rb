class Hamming
  VERSION = 1
  def self.compute(strand1, strand2)
    strand1 = strand1.chars
    strand2 = strand2.chars
    counter = 0
    strand1.each_with_index do |letter, index|
      counter += 1 if strand1[index] != strand2[index]
    end
      if strand1.length != strand2.length
        raise ArgumentError
      end
    counter
  end

end