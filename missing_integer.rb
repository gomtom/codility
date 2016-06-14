# # you can write to stdout for debugging purposes, e.g.
# # puts "this is a debug message"
#
# def solution(a)
#   # write your code in Ruby 2.2
#
#   max = a.max
#
#   if max <= 0
#     return 1
#
#   else
#
#     (1...max).each do |num|
#
#       return num if !a.include?(num)
#
#     end
#
#   end
#
#
# end


# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  n = a.size

  return 1 if n == 1

  # remove duplicates
  uniques = a.uniq

  # since we are looking for the minimal positive integer lets iterate through and check if a includes each vaule
  (1...n).each do |element|
    return element if !a.include?(element)
  end

end