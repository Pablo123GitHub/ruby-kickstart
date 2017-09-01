# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false


# def prime_chars?(inputArr)
#
#   inputArr == [] || nil ? [] : result =  inputArr.map{ |x|
#   x.length
#   }.reduce(:+)
#
#   def my_prime_function? (n)
#     return false if n === nil || n === ''
#   x = 2
#   prime_flag = true
#   while (x < n)
#   if n % x === 0
#      prime_flag = false
#      break
#    end
#   x += 1
# end
# return prime_flag
# end
#
# my_prime_function?(result)
#
# end

class Integer
  def prime?
    return false if self < 2
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0
    end
    true
  end
end

def prime_chars?(strings)
  strings.join.length.prime?
end
