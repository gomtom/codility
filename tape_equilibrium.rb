# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  n = a.length

  return 0 if n == 1

  differences = []

  # iterate through each integer p, slice the array at that point and sum each side
  (1...n).each do |p|
    left = a.slice(0...p).inject(:+)
    right = a.slice(p...n).inject(:+)

    # calculate the absolute differeces and store them
    differences << (left - right).abs

  end

  return differences.min

end