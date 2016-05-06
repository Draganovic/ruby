class Raindrops

  VERSION = 1

  RAINDROPS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(number)

    output = ""

    RAINDROPS.each do |prime, sound|
      output << sound if number % prime ==0

    end
    output.empty? ? "#{number}" : output
  end

end