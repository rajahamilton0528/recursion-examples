
def insertion_sort(unsorted, sorted, n)
  # base case, end when we reach the end of the unsorted list of items
  if n == unsorted.length
    sorted
  else
    item = unsorted[n]
    index = 0 # default

    sorted.each.with_index do |x, i|
      if item < sorted[i]
        # item being compared is less than first item in sorted array,
        # so we can return an index equal to the first position
        break
      elsif item > sorted[-1]
        # item being compared is greated than last item in sorted array,
        # so we can return an index to insert equal to the last position
        index = sorted.length
        break
      elsif item > sorted[i] && item < sorted[i + 1]
        index = i + 1
        break
      end
      next
    end

    # this does the shifting of elements
    sorted.insert(index, item)

    # call recursively
    insertion_sort(unsorted, sorted, n + 1)
  end
end

unsorted = ARGV[0].split(',').map(&:strip).map(&:to_i)

sorted = Array(unsorted.length)
sorted[0] = unsorted[0]

puts insertion_sort(unsorted, sorted, 1)

# e.g. "3, 8, 5, 4, 1, 9, -2"
#
# ruby insertion_sort.rb "3, 8, 5, 4, 1, 9, -2"
# ```
# -2
# 1
# 3
# 4
# 5
# 8
# 9
# ```
#
# http://www.techiedelight.com/insertion-sort-iterative-recursive/
# examples in C++
