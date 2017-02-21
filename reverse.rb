def reverse(string)
  if string.chars.length == 1
    string
  else
    string.chars[-1] + reverse(string.chars[0..-2].join)
  end
end

puts reverse(ARGV[0])
