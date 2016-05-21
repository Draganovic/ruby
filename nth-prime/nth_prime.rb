class Prime
  def self.nth(n)
    if n < 1
      message = 'There is no such thing. Be reasonable.'
      fail ArgumentError.new(message)
    end

    primes = 0
    i = 1
    while primes < n
      i += 1
      primes += 1 if self.prime?(i)
    end
    i
  end

  def self.prime?(n)
    return false if n == 1
    return true if n == 2
    (2..Math.sqrt(n).ceil).each do |i|
      return false if n % i == 0
    end
    return true
  end
end
# require 'pry'
#
# class Prime
#
#   attr_reader :nth
#
#   def nth(prime_pos)
#     primes = build_primes
#     primes[prime_pos-1]
#   end
#
#   def build_primes
#     no_evens = remove_evens(num_set)
#     no_evens.select do |number|
#       divisibles = []
#       1.upto(number).each do |tester|
#         divisibles << tester if number % tester == 0
#       end
#       divisibles.size < 3
#     end
#   end
#
#   def num_set
#     numbers =* (2..5_000)
#   end
#
#   def remove_evens(num_set)
#     num_set.reject! do |number|
#       number > 2 && number.even?
#     end
#   end
# end