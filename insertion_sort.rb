
def insertion_sort(unsorted, sorted, n)
  if n == unsorted.length
    sorted
  else
    item = unsorted[n]
    index = 0

    sorted.each.with_index do |x, i|
      if item < sorted[i]
        break
      elsif item > sorted[-1]
        index = sorted.length
        break
      elsif item > sorted[i] && item < sorted[i + 1]
        index = i + 1
        break
      end
      next
    end

    sorted = sorted.insert(index, item)

    insertion_sort(unsorted, sorted, n + 1)
  end
end

unsorted = ARGV[0].split(',').map(&:strip).map(&:to_i)

sorted = Array(unsorted.length)
sorted[0] = unsorted[0]

puts insertion_sort(unsorted, sorted, 1)

# e.g. "3, 8, 5, 4, 1, 9, -2"
# http://www.techiedelight.com/insertion-sort-iterative-recursive/
# examples in C++
#
