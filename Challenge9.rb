def is_palindrome?(number)
    number.to_s == number.to_s.reverse
  end
  
  def is_prime?(number)
    return false if number <= 1
    2.upto(Math.sqrt(number).to_i) do |i|
      return false if number % i == 0
    end
    true
  end
  
  def palindromic_primes(count)
    result = []
    number = 2
    while result.count < count
      result << number if is_palindrome?(number) && is_prime?(number)
      number += 1
    end
    result
  end
  
  n = gets.to_i
  puts palindromic_primes(n).to_s
  