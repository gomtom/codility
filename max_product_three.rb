# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  # max product will either be the three biggest numbers or the two smallest negative numbers and the biggest positive

  a.sort!

  return [a.last(3).inject(:*), a.first(2).inject(:*) * a.last].max



end