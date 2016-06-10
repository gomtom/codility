# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  n = a.size

  sorted = a.sort

  sorted.each_cons(3) do |p, q, r|

    return 1 if (p + q) > r

  end

  return 0

end