# base case is a string length of 1, return the string
# otherwise for a string of length > 1, call function for last char + func(remaining chars)
#
def reverse(string)
  # base case
  if string.chars.length == 1
    string
  else
    # build it up with recursive calls, last char, plus recursive call
    # when base case is reached, return
    string.chars[-1] + reverse(string.chars[0..-2].join)
  end
end

puts reverse(ARGV[0])
