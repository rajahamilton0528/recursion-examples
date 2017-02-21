def permute(result, input)
  if input.length == 0
    return
  end

  if input.length == 1
    puts result + input[0]
    return
  end

  if input.length == 2
    puts result + input[0] + input[1]
    puts result + input[1] + input[0]
    return
  end

  (0...input.length).step(1).each do |i|
    first = result + input[i]
    second = (i > 0 ? input[0..(i-1)] : '') + (input[(i+1)..-1] || '')
    permute(first, second)
  end
end

permute('', ARGV[0].to_s)
