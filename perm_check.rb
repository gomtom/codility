# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  # the sum of a sequence with no missing values is equal to n*(n + 1)/2
  n = a.size
  max = a.max

  (a.inject(:+) == (n*(n + 1))/2) && (max == n) ? (return 1) : (return 0)

end


# def solution(a)
#   # write your code in Ruby 2.2
#
#   seen = {}
#
#   max = a.max
#   a.each do |v|
#     seen[v] = true
#   end
#
#   # if the max value in a isnt equal to the length of the array then a cant be a permutation
#   seen.size == max && max == a.size ? 1 : 0
#
# end