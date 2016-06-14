# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

# def solution(a)
#   # write your code in Ruby 2.2
#   n = a.length

#   puts n

#   if n > 1
#     (1...(n+1)).each do |element|
#       return element if !a.include?(element)
#     end
#   elsif n == 0
#   return 0
#   else
#     return a.first
#   end

# end

def solution(a)
  # write your code in Ruby 2.2
  n = a.length + 1

  return 1 if a.empty?

  # the sum of a sequence on numbers is equal to n(n+1)/2
  sequence_sum = n*(n + 1)/2

  # the missing element will be the difference between the full sequence sum and the sum of a
  sum = a.inject(:+)

  return sequence_sum - sum
end