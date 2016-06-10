# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  max = a.max

  if max <= 0
    return 1

  else

    (1...max).each do |num|

      return num if !a.include?(num)

    end

  end


end