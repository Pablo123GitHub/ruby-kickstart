# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(*el)

newEl = []
el.each do |x|
  x == true ? x : x == false ? x : x.nil? == true ? x = false : x = true
  newEl << x
end

definingBool = newEl.shift

result = []
newEl.each_slice(2) { |a,b| result << [a,b]}

if definingBool == false

result.each_with_index do |arr, index|
result[index] = (arr[0] == arr[1] )
end

else
  result.each_with_index do |arr, index|
 result[index] =  !(arr[0] == arr[1])
end

end
result

end
