# no memoization
# O(n^2) exponential time complexity for recursive version
def fibonacci(n)
  if n <= 1
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts fibonacci(ARGV[0].to_i)
