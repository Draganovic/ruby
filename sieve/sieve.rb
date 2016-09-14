require 'prime'
class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    range = (1..@number).to_a
    range.select { |num| num.prime? }
  end
end
