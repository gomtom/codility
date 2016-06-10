# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2

  river = []

  (0...a.length).each do |second|


    river << a[second] unless river.include?(a[second])

    return second if river.length == x

  end

  return -1

end