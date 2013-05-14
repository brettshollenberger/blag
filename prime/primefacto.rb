require 'Prime'

class PrimeFactorization
  def initialize(number)
    @number = number
  end

  def list
    if @number <= 0
      raise 'Numbers below 2 do not have prime factors'
    else
      return @number.prime_division.sort.flatten.reject { |num| num == 1 }
    end
  end
end
