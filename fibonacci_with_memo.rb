# with memoization

class Functions
  attr_reader :memory

  def initialize
    @memory = {}
  end

  def fibonacci(n)
    if n <= 1
      n
    else
      if memory[n]
        memory[n]
      else
        result = fibonacci(n - 1) + fibonacci(n - 2)
        memory[n] = result
        result
      end
    end
  end
end

puts Functions.new.fibonacci(ARGV[0].to_i)
