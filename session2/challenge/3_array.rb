# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    newString = ""
     self.split("").each_index do |x|
      newString += self[x] if x % 2 ===0
    end
    return newString

  end
end
