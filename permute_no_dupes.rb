require 'set'

class Obj
  attr_accessor :words

  def initialize
    # Set only accepts unique elements
    @words = Set.new
  end

  def permute(result, input)
    if input.length == 0
      return
    end

    if input.length == 1
      word = result + input[0]
      words << word
      return
    end

    if input.length == 2
      w1 = result + input[0] + input[1]
      w2 = result + input[1] + input[0]
      words << w1 << w2
      return
    end

    (0...input.length).step(1).each do |i|
      first = result + input[i]
      second = (i > 0 ? input[0..(i-1)] : '') + (input[(i+1)..-1] || '')
      permute(first, second)
    end
  end
end

obj = Obj.new
obj.permute('', ARGV[0].to_s)

puts obj.words.to_a
