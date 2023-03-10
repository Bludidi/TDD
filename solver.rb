class Solver
  def factorial(number)
    raise ArgumentError, 'Enter only positive numbers' if number.negative?
    return 1 if number.zero?

    factorial(number - 1) * number
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    return 'FizzBuzz' if (number % 5).zero? && (number % 3).zero?
    return 'Fizz' if (number % 3).zero?
    return 'Buzz' if (number % 5).zero?

    number.to_s
  end
end
