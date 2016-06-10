# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # write your code in Ruby 2.2

  count = 0

  (a...b).each do |value|

    (count += 1) if (value % k == 0)

  end

  return count

end