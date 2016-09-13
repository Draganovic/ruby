class Squares

  VERSION = 2

  def initialize(number)
    @number = number
    @range = 1..number
  end

  def square_of_sum
    total = @range.to_a.reduce(0, :+)
    total**2
  end

  def sum_of_squares
     @range.reduce(0) { |sum, num| num**2 + sum}
  end

  def difference
    diff = sum_of_squares - square_of_sum
     diff * -1 if diff <= 0
  end

end
