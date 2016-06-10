# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  # number of splits
  n = a.length

  differences = []

  # test each split 0 < P < N
  (1...n).each do |p|

    first_part = 0
    second_part = 0

    # sum first part
    (0...p).each do |index|

      first_part += a[index]
    end

    # sum second part (these iterations are not inclusive i.e p <= i ,n
    (p...n).each do |index|
      second_part += a[index]
    end

    differences << (second_part - first_part).abs

  end

  differences.empty? ? (return 0) : (return differences.min)
end